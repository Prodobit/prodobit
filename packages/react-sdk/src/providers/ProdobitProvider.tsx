import React, { createContext, useContext } from 'react';
import { QueryClient, QueryClientProvider } from '@tanstack/react-query';
import { ProdobitClient } from '@prodobit/sdk';
import type { ProdobitProviderProps } from '../types';

const ProdobitContext = createContext<ProdobitClient | null>(null);

const defaultQueryClient = new QueryClient({
  defaultOptions: {
    queries: {
      staleTime: 5 * 60 * 1000,
      gcTime: 10 * 60 * 1000,
      refetchOnWindowFocus: false,
      retry: 1,
    },
  },
});

export const ProdobitProvider: React.FC<ProdobitProviderProps> = ({ 
  children, 
  client 
}) => {
  if (!client) {
    throw new Error('ProdobitProvider requires a client prop');
  }

  return (
    <QueryClientProvider client={defaultQueryClient}>
      <ProdobitContext.Provider value={client}>
        {children}
      </ProdobitContext.Provider>
    </QueryClientProvider>
  );
};

export const useProdobitClient = (): ProdobitClient => {
  const client = useContext(ProdobitContext);
  
  if (!client) {
    throw new Error('useProdobitClient must be used within a ProdobitProvider');
  }
  
  return client;
};