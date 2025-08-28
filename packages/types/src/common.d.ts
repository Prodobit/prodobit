export declare const uuid: import("arktype/internal/methods/string.ts").StringType<string, {}>;
export declare const timestamp: import("arktype/internal/methods/string.ts").StringType<string, {}>;
export declare const status: import("arktype/internal/methods/string.ts").StringType<"active" | "inactive" | "suspended" | "deleted", {}>;
export declare const pagination: import("arktype/internal/methods/object.ts").ObjectType<{
    page: number;
    limit: number;
    orderBy?: string | undefined;
    orderDirection?: "asc" | "desc" | undefined;
}, {}>;
export declare const response: <T>(dataType: T) => import("arktype/internal/methods/object.ts").ObjectType<{
    success: boolean;
    data: any;
    message?: string | undefined;
}, {}>;
export declare const errorResponse: import("arktype/internal/methods/object.ts").ObjectType<{
    success: false;
    error: {
        code: string;
        message: string;
        details?: unknown;
    };
    message?: string | undefined;
}, {}>;
export declare const paginatedResponse: <T>(dataType: T) => import("arktype/internal/methods/object.ts").ObjectType<{
    success: boolean;
    data: any;
    pagination: {
        page: number;
        limit: number;
        total: number;
        totalPages: number;
    };
    message?: string | undefined;
}, {}>;
export interface ApiResponse<T = any> {
    success: boolean;
    data?: T;
    message?: string;
}
export interface ApiErrorResponse {
    success: false;
    error: {
        code: string;
        message: string;
        details?: unknown;
    };
    message?: string;
}
export interface ApiPaginatedResponse<T = any> {
    success: boolean;
    data: T[];
    pagination: {
        page: number;
        limit: number;
        total: number;
        totalPages: number;
    };
    message?: string;
}
export declare const prodobitError: import("arktype/internal/methods/object.ts").ObjectType<{
    message: string;
    statusCode: number;
    code?: string | undefined;
    details?: unknown;
}, {}>;
export type UUID = typeof uuid.infer;
export type Timestamp = typeof timestamp.infer;
export type Status = typeof status.infer;
export type Pagination = typeof pagination.infer;
export type Response<T> = ApiResponse<T>;
export type ErrorResponse = ApiErrorResponse;
export type PaginatedResponse<T> = ApiPaginatedResponse<T>;
export type ProdobitErrorType = typeof prodobitError.infer;
//# sourceMappingURL=common.d.ts.map