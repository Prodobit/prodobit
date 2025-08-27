import { detectRuntime } from './runtime-detection.js';
import type { PlatformAdapter } from './adapters.js';
import { 
  NodeAdapter, 
  CloudflareWorkerAdapter, 
  VercelEdgeAdapter, 
  DenoAdapter, 
  BrowserAdapter 
} from './adapters.js';

export interface AdapterOptions {
  // Cloudflare Worker options
  env?: Record<string, string>;
  
  // Custom adapter override
  customAdapter?: PlatformAdapter;
}

export function createPlatformAdapter(options: AdapterOptions = {}): PlatformAdapter {
  // Use custom adapter if provided
  if (options.customAdapter) {
    return options.customAdapter;
  }

  const runtime = detectRuntime();

  switch (runtime.environment) {
    case 'node':
      return new NodeAdapter();
    
    case 'cloudflare-worker':
      return new CloudflareWorkerAdapter(options.env);
    
    case 'vercel-edge':
      return new VercelEdgeAdapter();
    
    case 'deno':
      return new DenoAdapter();
    
    case 'browser':
      return new BrowserAdapter();
    
    default:
      // Fallback to most basic adapter
      console.warn(`Unknown runtime environment: ${runtime.environment}. Using browser adapter as fallback.`);
      return new BrowserAdapter();
  }
}

export function isPlatformSupported(feature: 'fileSystem' | 'watching' | 'environment'): boolean {
  const runtime = detectRuntime();
  
  switch (feature) {
    case 'fileSystem':
      return runtime.capabilities.hasFileSystem;
    
    case 'watching':
      return runtime.capabilities.canWatch;
    
    case 'environment':
      return runtime.capabilities.hasProcessEnv;
    
    default:
      return false;
  }
}