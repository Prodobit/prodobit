import type { PlatformAdapter } from "../platform/adapters.js";
import {
  supportsFileSystem,
  supportsWatching,
} from "../platform/runtime-detection.js";
import { ConfigSource } from "../types/config-source.js";

export interface FileSourceOptions {
  path: string;
  format?: "json" | "js" | "auto";
  required?: boolean;
  encoding?: BufferEncoding;
}

export class FileSource implements ConfigSource {
  readonly name: string;
  readonly priority = 50; // Medium priority

  private readonly options: Required<Omit<FileSourceOptions, "required">> & {
    required?: boolean;
  };
  private readonly adapter: PlatformAdapter;
  private stopWatching?: (() => void) | undefined;
  private resolvedPath?: string;

  constructor(adapter: PlatformAdapter, options: FileSourceOptions) {
    this.adapter = adapter;

    this.options = {
      path: options.path,
      format: options.format ?? "auto",
      required: options.required ?? false,
      encoding: options.encoding ?? "utf8",
    };
    this.name = `file:${this.options.path}`;
  }

  private async getResolvedPath(): Promise<string> {
    if (!this.resolvedPath) {
      this.resolvedPath = this.adapter.resolvePath
        ? await this.adapter.resolvePath(this.options.path)
        : this.options.path;
    }
    return this.resolvedPath;
  }

  async load(): Promise<Record<string, unknown> | null> {
    const resolvedPath = await this.getResolvedPath();

    if (!supportsFileSystem()) {
      if (this.options.required) {
        throw new Error(
          `File system not supported in this runtime: ${resolvedPath}`
        );
      }
      return null;
    }

    if (!this.adapter.fileExists || !this.adapter.readFile) {
      if (this.options.required) {
        throw new Error(
          `File operations not supported by adapter: ${this.adapter.name}`
        );
      }
      return null;
    }

    const exists = await this.adapter.fileExists(resolvedPath);
    if (!exists) {
      if (this.options.required) {
        throw new Error(`Required config file not found: ${resolvedPath}`);
      }
      return null;
    }

    try {
      const content = await this.adapter.readFile(
        resolvedPath,
        this.options.encoding
      );
      if (content === null) {
        if (this.options.required) {
          throw new Error(`Failed to read config file: ${resolvedPath}`);
        }
        return null;
      }
      return this.parseContent(content);
    } catch (error) {
      if (this.options.required) {
        throw new Error(
          `Failed to read config file ${resolvedPath}: ${error}`
        );
      }
      return null;
    }
  }

  async watch(
    callback: (config: Record<string, unknown>) => void
  ): Promise<void> {
    const resolvedPath = await this.getResolvedPath();

    if (!supportsWatching() || !this.adapter.watchFile) {
      console.warn(
        `File watching not supported in this runtime: ${this.adapter.name}`
      );
      return;
    }

    try {
      const watchResult = await this.adapter.watchFile(
        resolvedPath,
        async () => {
          try {
            const config = await this.load();
            if (config) {
              callback(config);
            }
          } catch (error) {
            console.error(
              `Error reloading config file ${resolvedPath}:`,
              error
            );
          }
        }
      );
      if (typeof watchResult === 'function') {
        this.stopWatching = watchResult;
      }
    } catch (error) {
      console.error(`Error watching config file ${resolvedPath}:`, error);
    }
  }

  async close(): Promise<void> {
    if (this.stopWatching) {
      this.stopWatching();
      delete this.stopWatching;
    }
  }

  private parseContent(content: string): Record<string, unknown> {
    const format = this.detectFormat(content);

    switch (format) {
      case "json":
        return JSON.parse(content);

      case "js": {
        // For JavaScript files, we need to use dynamic import
        // First write to temp file or use eval (less secure)
        // For now, we'll throw an error and suggest using JSON
        throw new Error(
          "JavaScript config files require dynamic import. Use JSON format instead."
        );
      }

      default:
        throw new Error(`Unsupported config file format: ${format}`);
    }
  }

  private detectFormat(content: string): "json" | "js" {
    if (this.options.format !== "auto") {
      return this.options.format;
    }

    const path = this.options.path;
    const ext = path.substring(path.lastIndexOf(".")).toLowerCase();

    switch (ext) {
      case ".json":
        return "json";
      case ".js":
      case ".mjs":
      case ".cjs":
        return "js";
      default:
        // Try to detect by content
        const trimmedContent = content.trim();
        if (trimmedContent.startsWith("{") || trimmedContent.startsWith("[")) {
          return "json";
        }
        return "js";
    }
  }
}
