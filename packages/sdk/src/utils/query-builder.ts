import type { QueryValue, QueryPrimitive } from "../types";

/** General purpose pure query builder */
export function buildQuery<T extends Record<string, QueryValue>>(
  filters?: Partial<T>
): string {
  if (!filters) return "";

  const params = new URLSearchParams();

  for (const [key, raw] of Object.entries(filters)) {
    if (raw == null) continue;

    const append = (v: QueryPrimitive) => {
      if (v == null) return;
      const val =
        v instanceof Date
          ? v.toISOString()
          : typeof v === "boolean"
          ? String(v) // "true"/"false"
          : String(v); // number/string
      params.append(key, val);
    };

    if (Array.isArray(raw)) {
      for (const v of raw) append(v);
    } else {
      append(raw);
    }
  }

  return params.toString();
}

/** Legacy function for backward compatibility */
export function buildQueryParams<T extends Record<string, QueryValue>>(
  filters?: Partial<T>,
  params?: URLSearchParams
): void {
  if (!filters) return;

  const urlParams = params || new URLSearchParams();

  Object.entries(filters).forEach(([key, value]) => {
    if (value !== undefined) {
      urlParams.append(key, String(value));
    }
  });
}