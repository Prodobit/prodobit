import { type } from "arktype";

export const uuid = type("string.uuid");

export const timestamp = type("string.date");

export const status = type("'active' | 'inactive' | 'suspended' | 'deleted'");

export const pagination = type({
  page: "number >= 1",
  limit: "number >= 1",
  "orderBy?": "string",
  "orderDirection?": "'asc' | 'desc'",
});

export const response = <T>(dataType: T) => {
  return type({
    success: "boolean",
    data: dataType as any,
    "message?": "string",
  });
};

export const errorResponse = type({
  success: "false",
  error: {
    code: "string",
    message: "string",
    "details?": "unknown",
  },
  "message?": "string",
});

export const paginatedResponse = <T>(dataType: T) => {
  return type({
    success: "boolean",
    data: dataType as any,
    pagination: {
      page: "number",
      limit: "number",
      total: "number",
      totalPages: "number",
    },
    "message?": "string",
  });
};

// Simplified, consistent response types for SDK
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

// ProdobitError Schema
export const prodobitError = type({
  message: "string",
  statusCode: "number >= 100",
  "code?": "string",
  "details?": "unknown",
});

export type UUID = typeof uuid.infer;
export type Timestamp = typeof timestamp.infer;
export type Status = typeof status.infer;
export type Pagination = typeof pagination.infer;
export type Response<T> = ApiResponse<T>;
export type ErrorResponse = ApiErrorResponse;
export type PaginatedResponse<T> = ApiPaginatedResponse<T>;
export type ProdobitErrorType = typeof prodobitError.infer;