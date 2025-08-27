import { ProdobitClient } from './client';
import type { ProdobitClientConfig } from './types';

let clientInstance: ProdobitClient | null = null;

export function getProdobitClientSingleton(config: ProdobitClientConfig): ProdobitClient {
  if (!clientInstance) {
    console.log('Creating singleton ProdobitClient instance');
    clientInstance = new ProdobitClient(config);
  } else {
    console.log('Returning existing singleton ProdobitClient instance');
  }
  return clientInstance;
}

export function clearProdobitClientSingleton(): void {
  console.log('Clearing singleton ProdobitClient instance');
  clientInstance = null;
}