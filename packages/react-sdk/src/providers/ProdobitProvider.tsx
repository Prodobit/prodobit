import React, { createContext, useContext, useEffect, useState } from 'react';
import { QueryClient, QueryClientProvider } from '@tanstack/react-query';
import { ProdobitClient, tokenCookies } from '@prodobit/sdk';
import type { AuthState } from '@prodobit/sdk';
import type { ProdobitProviderProps } from '../types';

const ProdobitContext = createContext<ProdobitClient | null>(null);
const AuthStateContext = createContext<AuthState | null>(null);

const defaultQueryClient = new QueryClient({
  defaultOptions: {
    queries: {
      staleTime: 5 * 60 * 1000, // Data is fresh for 5 minutes
      gcTime: 10 * 60 * 1000, // Keep cache for 10 minutes
      refetchOnWindowFocus: false,
      refetchOnMount: false, // Don't refetch on component mount if data exists
      refetchOnReconnect: false, // Don't refetch on network reconnect
      retry: 1,
      retryOnMount: false, // Don't retry failed queries on mount
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

  const [authState, setAuthState] = useState(() => {
    // Initialize auth state based on cookies
    const hasValidTokens = tokenCookies.hasValidTokens();
    const initialState = client.auth.getState();
    
    // If we have valid tokens in cookies but client doesn't know about it yet
    if (hasValidTokens && !initialState.isAuthenticated) {
      return {
        ...initialState,
        isLoading: true, // We'll verify the tokens during initialization
      };
    }
    
    return initialState;
  });
  const [isInitialized, setIsInitialized] = useState(false);

  useEffect(() => {
    // Subscribe to auth state changes
    const unsubscribe = client.auth.subscribe(setAuthState);
    
    // Initialize auth state and sync with stored tokens
    const initializeAuth = async () => {
      if (!isInitialized) {
        setIsInitialized(true);
        try {
          await client.auth.initialize();
          // Force auth state update after initialization
          const newState = client.auth.getState();
          setAuthState(newState);
          console.log('Auth initialized successfully from cookies:', newState);
        } catch (error) {
          console.warn('Auth initialization failed:', error);
          // Don't clear tokens here - the auth-state.ts initialize() handles token cleanup
          // when refresh actually fails. Network errors shouldn't clear valid tokens.
          const currentState = client.auth.getState();
          setAuthState(currentState);
        }
      }
    };

    initializeAuth();
    return unsubscribe;
  }, [client, isInitialized]);

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