// Re-export types from @prodobit/types to avoid direct dependency in consuming apps
export * from "@prodobit/types";

// Main SDK exports
export { ProdobitClient, buildQuery } from "./client";
export * from "./types";

// Framework integration
export * from "./framework";

// Validation
export * from "./validation";

// Export singleton functions
export { getProdobitClientSingleton, clearProdobitClientSingleton } from "./singleton";
