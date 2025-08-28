import { TokenInfo, type ProdobitClientConfig, type RequestConfig } from "../types";
export declare abstract class BaseClient {
    protected baseUrl: string;
    protected apiKey?: string;
    protected timeout: number;
    protected defaultHeaders: Record<string, string>;
    protected tokenInfo?: TokenInfo;
    protected autoRefresh: boolean;
    protected refreshPromise?: Promise<void>;
    constructor(config: ProdobitClientConfig);
    protected request<T>(method: string, path: string, data?: unknown, config?: RequestConfig): Promise<T>;
    makeRequest<T = unknown>(method: string, path: string, data?: unknown, config?: RequestConfig): Promise<T>;
    private isTokenExpiring;
    private ensureTokenRefresh;
    private performTokenRefresh;
    setTokenInfo(tokenInfo: TokenInfo): void;
    getTokenInfo(): TokenInfo | undefined;
    clearTokenInfo(): void;
    getCurrentTenantId(): string | undefined;
    isAuthenticated(): boolean;
    isTokenValid(): boolean;
    getAccessToken(): string | undefined;
    setApiKey(apiKey: string): void;
    removeApiKey(): void;
}
//# sourceMappingURL=base-client.d.ts.map