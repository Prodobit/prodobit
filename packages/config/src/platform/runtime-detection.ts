export type RuntimeEnvironment =
  | "node"
  | "cloudflare-worker"
  | "vercel-edge"
  | "deno"
  | "browser"
  | "unknown";

export interface RuntimeCapabilities {
  hasFileSystem: boolean;
  hasProcessEnv: boolean;
  hasSignals: boolean;
  canWatch: boolean;
  supportsRequire: boolean;
  supportsImport: boolean;
}

export interface RuntimeInfo {
  environment: RuntimeEnvironment;
  capabilities: RuntimeCapabilities;
  version?: string;
}

export function detectRuntime(): RuntimeInfo {
  // Check for Cloudflare Worker
  if (
    typeof globalThis !== "undefined" &&
    "caches" in globalThis &&
    "fetch" in globalThis
  ) {
    if (typeof (globalThis as any).EdgeRuntime !== "undefined") {
      return {
        environment: "vercel-edge",
        capabilities: {
          hasFileSystem: false,
          hasProcessEnv: false,
          hasSignals: false,
          canWatch: false,
          supportsRequire: false,
          supportsImport: true,
        },
      };
    }

    if (typeof (globalThis as any).WorkerGlobalScope !== "undefined") {
      return {
        environment: "cloudflare-worker",
        capabilities: {
          hasFileSystem: false,
          hasProcessEnv: false,
          hasSignals: false,
          canWatch: false,
          supportsRequire: false,
          supportsImport: true,
        },
      };
    }
  }

  // Check for Deno
  const deno = (globalThis as any).Deno;
  if (typeof deno !== "undefined") {
    return {
      environment: "deno",
      version: deno.version?.deno,
      capabilities: {
        hasFileSystem: true,
        hasProcessEnv: true,
        hasSignals: true,
        canWatch: true,
        supportsRequire: false,
        supportsImport: true,
      },
    };
  }

  // Check for Browser
  if (typeof window !== "undefined" && typeof document !== "undefined") {
    return {
      environment: "browser",
      capabilities: {
        hasFileSystem: false,
        hasProcessEnv: false,
        hasSignals: false,
        canWatch: false,
        supportsRequire: false,
        supportsImport: true,
      },
    };
  }

  // Check for Node.js
  if (
    typeof process !== "undefined" &&
    process.versions &&
    process.versions.node
  ) {
    return {
      environment: "node",
      version: process.versions.node,
      capabilities: {
        hasFileSystem: true,
        hasProcessEnv: true,
        hasSignals: true,
        canWatch: true,
        supportsRequire: true,
        supportsImport: true,
      },
    };
  }

  // Fallback to unknown
  return {
    environment: "unknown",
    capabilities: {
      hasFileSystem: false,
      hasProcessEnv: false,
      hasSignals: false,
      canWatch: false,
      supportsRequire: false,
      supportsImport: false,
    },
  };
}

export function isNodeEnvironment(): boolean {
  return detectRuntime().environment === "node";
}

export function isEdgeEnvironment(): boolean {
  const env = detectRuntime().environment;
  return env === "cloudflare-worker" || env === "vercel-edge";
}

export function isBrowserEnvironment(): boolean {
  return detectRuntime().environment === "browser";
}

export function supportsFileSystem(): boolean {
  return detectRuntime().capabilities.hasFileSystem;
}

export function supportsWatching(): boolean {
  return detectRuntime().capabilities.canWatch;
}
