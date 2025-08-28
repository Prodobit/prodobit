import React, { createContext, useContext } from 'react';
import { QueryClient, QueryClientProvider } from '@tanstack/react-query';
var ProdobitContext = /*#__PURE__*/ createContext(null);
var defaultQueryClient = new QueryClient({
    defaultOptions: {
        queries: {
            staleTime: 5 * 60 * 1000,
            gcTime: 10 * 60 * 1000,
            refetchOnWindowFocus: false,
            retry: 1
        }
    }
});
export var ProdobitProvider = function(param) {
    var children = param.children, client = param.client;
    if (!client) {
        throw new Error('ProdobitProvider requires a client prop');
    }
    return /*#__PURE__*/ React.createElement(QueryClientProvider, {
        client: defaultQueryClient
    }, /*#__PURE__*/ React.createElement(ProdobitContext.Provider, {
        value: client
    }, children));
};
export var useProdobitClient = function() {
    var client = useContext(ProdobitContext);
    if (!client) {
        throw new Error('useProdobitClient must be used within a ProdobitProvider');
    }
    return client;
};
