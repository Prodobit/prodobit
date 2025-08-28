import { type } from "arktype";
export declare function validateRequest<T extends Record<string, any>>(schema: (data: unknown) => T | type.errors, data: unknown, errorMessage?: string): T;
export declare function validateResponse<T extends Record<string, any>>(schema: (data: unknown) => T | type.errors, data: unknown, errorMessage?: string): T;
//# sourceMappingURL=validation.d.ts.map