import { type } from "arktype";
import { ProdobitError } from "../types";

export function validateRequest<T extends Record<string, any>>(
  schema: (data: unknown) => T | type.errors,
  data: unknown,
  errorMessage = "Invalid request data"
): T {
  const result = schema(data);
  
  if (result instanceof type.errors) {
    throw ProdobitError.validationError(errorMessage, result.summary);
  }
  
  return result;
}

export function validateResponse<T extends Record<string, any>>(
  schema: (data: unknown) => T | type.errors,
  data: unknown,
  errorMessage = "Invalid response data"
): T {
  const result = schema(data);
  
  if (result instanceof type.errors) {
    throw ProdobitError.serverError(errorMessage, result.summary);
  }
  
  return result;
}