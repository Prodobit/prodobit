import type { PlatformAdapter } from "../platform/adapters.js";
import { supportsFileSystem } from "../platform/runtime-detection.js";

export interface EnvironmentInfo {
  environment: "development" | "production" | "test";
  nodeEnv: string;
  isDevelopment: boolean;
  isProduction: boolean;
  isTest: boolean;
  workingDirectory: string;
  configDirectory: string;
  homeDirectory?: string | undefined;
}

export async function detectEnvironment(adapter: PlatformAdapter): Promise<EnvironmentInfo> {
  const nodeEnv = adapter.getEnvironmentVariable("NODE_ENV") || "development";
  const prodobitEnv = (adapter.getEnvironmentVariable("PRODOBIT_ENV") ||
    nodeEnv) as "development" | "production" | "test";

  const environment = ["development", "production", "test"].includes(
    prodobitEnv
  )
    ? prodobitEnv
    : "development";

  const workingDirectory = adapter.getWorkingDirectory();
  const configDir = adapter.getEnvironmentVariable("PRODOBIT_CONFIG_DIR");
  const configDirectory =
    configDir && adapter.resolvePath
      ? await adapter.resolvePath(configDir)
      : workingDirectory;

  const homeDirectory =
    adapter.getEnvironmentVariable("HOME") ||
    adapter.getEnvironmentVariable("USERPROFILE");

  return {
    environment,
    nodeEnv,
    isDevelopment: environment === "development",
    isProduction: environment === "production",
    isTest: environment === "test",
    workingDirectory,
    configDirectory,
    homeDirectory,
  };
}

export async function getConfigSearchPaths(
  env: EnvironmentInfo,
  adapter: PlatformAdapter
): Promise<string[]> {
  const paths: string[] = [];

  // Current directory
  paths.push(env.workingDirectory);

  // Config directory if different from working directory
  if (env.configDirectory !== env.workingDirectory) {
    paths.push(env.configDirectory);
  }

  // Home directory config (only if file system is supported)
  if (env.homeDirectory && adapter.resolvePath) {
    paths.push(await adapter.resolvePath(env.homeDirectory, ".prodobit"));
    paths.push(await adapter.resolvePath(env.homeDirectory, ".config", "prodobit"));
  }

  // System-wide config (Unix-like systems, only for Node.js)
  if (adapter.name === "node") {
    const platformInfo = adapter.getPlatformInfo();
    if (platformInfo.platform !== "win32") {
      paths.push("/etc/prodobit");
      paths.push("/usr/local/etc/prodobit");
    }
  }

  return paths;
}

export async function findConfigFile(
  searchPaths: string[],
  filenames: string[],
  adapter: PlatformAdapter
): Promise<string | null> {
  if (!supportsFileSystem() || !adapter.fileExists || !adapter.resolvePath) {
    return null;
  }

  for (const searchPath of searchPaths) {
    for (const filename of filenames) {
      const fullPath = await adapter.resolvePath(searchPath, filename);

      try {
        const exists = await adapter.fileExists(fullPath);
        if (exists) {
          return fullPath;
        }
      } catch {
        // File doesn't exist or not readable, continue searching
        continue;
      }
    }
  }

  return null;
}

export function expandEnvironmentVariables(
  value: string,
  adapter: PlatformAdapter
): string {
  return value.replace(/\$\{([^}]+)\}/g, (match, varName) => {
    const envValue = adapter.getEnvironmentVariable(varName);
    if (envValue === undefined) {
      throw new Error(`Environment variable ${varName} is not defined`);
    }
    return envValue;
  });
}

export function parseEnvironmentValue(value: string): unknown {
  // Handle empty values
  if (value === "") {
    return "";
  }

  // Handle boolean values
  if (value === "true" || value === "false") {
    return value === "true";
  }

  // Handle null and undefined
  if (value === "null") {
    return null;
  }
  if (value === "undefined") {
    return undefined;
  }

  // Handle JSON values
  if (
    (value.startsWith("{") && value.endsWith("}")) ||
    (value.startsWith("[") && value.endsWith("]"))
  ) {
    try {
      return JSON.parse(value);
    } catch {
      // Not valid JSON, treat as string
      return value;
    }
  }

  // Handle numbers
  if (/^-?\d+$/.test(value)) {
    const intValue = parseInt(value, 10);
    if (!isNaN(intValue)) {
      return intValue;
    }
  }

  if (/^-?\d*\.\d+$/.test(value)) {
    const floatValue = parseFloat(value);
    if (!isNaN(floatValue)) {
      return floatValue;
    }
  }

  // Handle comma-separated arrays
  if (value.includes(",") && !value.includes(" ")) {
    return value.split(",").map((item) => item.trim());
  }

  // Note: Environment variable expansion requires adapter context
  // This should be handled by the caller with expandEnvironmentVariables(value, adapter)

  // Default to string
  return value;
}

export function normalizeConfigPath(path: string): string {
  // Convert environment variable style to dot notation
  // Example: DATABASE_HOST -> database.host
  return path
    .toLowerCase()
    .replace(/_/g, ".")
    .replace(/^prodobit\./, ""); // Remove prodobit prefix if present
}

export function getEnvironmentPrefix(adapter: PlatformAdapter): string {
  return adapter.getEnvironmentVariable("PRODOBIT_ENV_PREFIX") || "PRODOBIT_";
}

export interface ProcessSignalHandler {
  signal: NodeJS.Signals | "all";
  handler: () => Promise<void> | void;
}

export function setupGracefulShutdown(
  handlers: ProcessSignalHandler[],
  adapter: PlatformAdapter
): void {
  // Only setup signal handlers in Node.js environment
  if (adapter.name !== "node") {
    console.warn("Graceful shutdown signals not supported in this runtime");
    return;
  }

  const signals: NodeJS.Signals[] = ["SIGTERM", "SIGINT", "SIGUSR2"];

  for (const signal of signals) {
    process.on(signal, async () => {
      console.log(`Received ${signal}, starting graceful shutdown...`);

      try {
        for (const { signal: handlerSignal, handler } of handlers) {
          if (handlerSignal === signal || (handlerSignal as string) === "all") {
            await handler();
          }
        }

        console.log("Graceful shutdown completed");
        process.exit(0);
      } catch (error) {
        console.error("Error during graceful shutdown:", error);
        process.exit(1);
      }
    });
  }
}
