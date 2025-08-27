export interface PlatformAdapter {
  readonly name: string;
  
  // Environment access
  getEnvironmentVariable(key: string): string | undefined;
  getAllEnvironmentVariables(): Record<string, string>;
  
  // File system (if supported)
  readFile?(path: string, encoding?: string): Promise<string | null>;
  fileExists?(path: string): Promise<boolean>;
  watchFile?(path: string, callback: () => void): Promise<(() => void) | void>;
  resolvePath?(...paths: string[]): Promise<string>;
  getCurrentDirectory?(): string;
  
  // Runtime info
  getWorkingDirectory(): string;
  getPlatformInfo(): Record<string, unknown>;
}

export class NodeAdapter implements PlatformAdapter {
  readonly name = 'node';

  getEnvironmentVariable(key: string): string | undefined {
    return process.env[key];
  }

  getAllEnvironmentVariables(): Record<string, string> {
    const env: Record<string, string> = {};
    for (const [key, value] of Object.entries(process.env)) {
      if (value !== undefined) {
        env[key] = value;
      }
    }
    return env;
  }

  async readFile(path: string, encoding: string = 'utf8'): Promise<string | null> {
    try {
      const { readFile } = await import('node:fs/promises');
      return await readFile(path, encoding as BufferEncoding);
    } catch {
      return null;
    }
  }

  async fileExists(path: string): Promise<boolean> {
    try {
      const { access, constants } = await import('node:fs/promises');
      await access(path, constants.R_OK);
      return true;
    } catch {
      return false;
    }
  }

  async watchFile(path: string, callback: () => void): Promise<() => void> {
    const { watch } = await import('node:fs/promises');
    const controller = new AbortController();

    const watchAsync = async () => {
      try {
        const watcher = watch(path, { signal: controller.signal });
        for await (const event of watcher) {
          if (event.eventType === 'change') {
            callback();
          }
        }
      } catch (error) {
        if ((error as NodeJS.ErrnoException).name !== 'AbortError') {
          console.error('Error watching file:', error);
        }
      }
    };

    watchAsync();

    return () => controller.abort();
  }

  async resolvePath(...paths: string[]): Promise<string> {
    const { resolve } = await import('node:path');
    return resolve(...paths);
  }

  getCurrentDirectory(): string {
    return process.cwd();
  }

  getWorkingDirectory(): string {
    return process.cwd();
  }

  getPlatformInfo(): Record<string, unknown> {
    return {
      platform: process.platform,
      arch: process.arch,
      nodeVersion: process.versions.node,
      pid: process.pid,
    };
  }
}

export class CloudflareWorkerAdapter implements PlatformAdapter {
  readonly name = 'cloudflare-worker';
  private env: Record<string, string>;

  constructor(env: Record<string, string> = {}) {
    this.env = env;
  }

  getEnvironmentVariable(key: string): string | undefined {
    return this.env[key];
  }

  getAllEnvironmentVariables(): Record<string, string> {
    return { ...this.env };
  }

  getWorkingDirectory(): string {
    return '/';
  }

  getPlatformInfo(): Record<string, unknown> {
    return {
      platform: 'cloudflare-worker',
      runtime: 'v8',
      capabilities: ['fetch', 'crypto', 'streams'],
    };
  }
}

export class VercelEdgeAdapter implements PlatformAdapter {
  readonly name = 'vercel-edge';

  getEnvironmentVariable(key: string): string | undefined {
    if (typeof process !== 'undefined' && process.env) {
      return process.env[key];
    }
    return undefined;
  }

  getAllEnvironmentVariables(): Record<string, string> {
    if (typeof process !== 'undefined' && process.env) {
      const env: Record<string, string> = {};
      for (const [key, value] of Object.entries(process.env)) {
        if (value !== undefined) {
          env[key] = value;
        }
      }
      return env;
    }
    return {};
  }

  getWorkingDirectory(): string {
    return '/var/task';
  }

  getPlatformInfo(): Record<string, unknown> {
    return {
      platform: 'vercel-edge',
      runtime: 'edge-runtime',
      capabilities: ['fetch', 'crypto', 'streams'],
    };
  }
}

export class DenoAdapter implements PlatformAdapter {
  readonly name = 'deno';

  getEnvironmentVariable(key: string): string | undefined {
    return (globalThis as any).Deno?.env?.get(key);
  }

  getAllEnvironmentVariables(): Record<string, string> {
    return (globalThis as any).Deno?.env?.toObject() || {};
  }

  async readFile(path: string): Promise<string | null> {
    try {
      return await (globalThis as any).Deno?.readTextFile(path);
    } catch {
      return null;
    }
  }

  async fileExists(path: string): Promise<boolean> {
    try {
      const stat = await (globalThis as any).Deno?.stat(path);
      return stat.isFile;
    } catch {
      return false;
    }
  }

  async resolvePath(...paths: string[]): Promise<string> {
    // Simple path resolution for Deno
    return paths.join('/').replace(/\/+/g, '/');
  }

  getCurrentDirectory(): string {
    return (globalThis as any).Deno?.cwd() || '/';
  }

  getWorkingDirectory(): string {
    return (globalThis as any).Deno?.cwd() || '/';
  }

  getPlatformInfo(): Record<string, unknown> {
    const deno = (globalThis as any).Deno;
    return {
      platform: 'deno',
      version: deno?.version?.deno,
      v8Version: deno?.version?.v8,
      tsVersion: deno?.version?.typescript,
    };
  }
}

export class BrowserAdapter implements PlatformAdapter {
  readonly name = 'browser';

  getEnvironmentVariable(key: string): string | undefined {
    // Browser'da environment variables yoktur
    return undefined;
  }

  getAllEnvironmentVariables(): Record<string, string> {
    return {};
  }

  getWorkingDirectory(): string {
    return window.location.origin;
  }

  getPlatformInfo(): Record<string, unknown> {
    return {
      platform: 'browser',
      userAgent: navigator.userAgent,
      language: navigator.language,
      cookieEnabled: navigator.cookieEnabled,
    };
  }
}