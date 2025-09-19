import React, { createContext, useContext, useEffect, useState } from 'react';
import { QueryClient, QueryClientProvider } from '@tanstack/react-query';
import { ProdobitClient } from '@prodobit/sdk';
import type { AuthState } from '@prodobit/sdk';
import type { ProdobitProviderProps } from '../types';

const ProdobitContext = createContext<ProdobitClient | null>(null);
const AuthStateContext = createContext<AuthState | null>(null);

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

  const [authState, setAuthState] = useState(() => client.auth.getState());

  useEffect(() => {
    // Subscribe to auth state changes
    const unsubscribe = client.auth.subscribe(setAuthState);
    
    // Initialize auth state on mount
    client.auth.initialize().catch((error) => {
      console.warn('Auth initialization failed:', error);
    });

    return unsubscribe;
  }, [client]);

  return (
    <QueryClientProvider client={defaultQueryClient}>
      <ProdobitContext.Provider value={client}>
        <AuthStateContext.Provider value={authState}>
          {children}
        </AuthStateContext.Provider>
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

export const useAuthState = (): AuthState => {
  const authState = useContext(AuthStateContext);
  
  if (authState === null) {
    throw new Error('useAuthState must be used within a ProdobitProvider');
  }
  
  return authState;
};