export interface ConfigSource {
  readonly name: string;
  readonly priority: number;
  load(): Promise<Record<string, unknown> | null>;
  watch?(callback: (config: Record<string, unknown>) => void): Promise<void>;
  close?(): Promise<void>;
}

export interface ConfigSourceOptions {
  required?: boolean;
  watch?: boolean;
  transform?: (value: Record<string, unknown>) => Record<string, unknown>;
}

export interface ConfigLoadOptions {
  sources?: ConfigSource[];
  environment?: string;
  watch?: boolean;
  validateOnChange?: boolean;
}

export interface ConfigValidationErrorInfo {
  path: string;
  message: string;
  value?: unknown;
  expected?: string | undefined;
}

export interface ConfigValidationResult {
  success: boolean;
  errors: ConfigValidationErrorInfo[];
  data?: any;
}