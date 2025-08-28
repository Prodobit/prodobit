import type { QueryValue } from "../types";
/** General purpose pure query builder */
export declare function buildQuery<T extends Record<string, QueryValue>>(filters?: Partial<T>): string;
/** Legacy function for backward compatibility */
export declare function buildQueryParams<T extends Record<string, QueryValue>>(filters?: Partial<T>, params?: URLSearchParams): void;
//# sourceMappingURL=query-builder.d.ts.map