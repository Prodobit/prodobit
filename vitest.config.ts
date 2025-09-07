/// <reference types="vitest" />
import { defineConfig } from 'vitest/config'
import { resolve } from 'path'

export default defineConfig({
  test: {
    environment: 'jsdom',
    globals: true,
    setupFiles: ['./tests/setup.ts'],
    coverage: {
      reporter: ['text', 'html', 'lcov'],
      exclude: [
        'node_modules/',
        'dist/',
        '**/*.d.ts',
        '**/index.ts',
        'tests/',
        '**/*.config.*',
        '**/*.test.*',
        '**/migrations/**',
        '**/drizzle/**'
      ],
      thresholds: {
        global: {
          branches: 70,
          functions: 70,
          lines: 70,
          statements: 70
        }
      }
    },
    alias: {
      '@prodobit/config': resolve(__dirname, './packages/config/src'),
      '@prodobit/database': resolve(__dirname, './packages/database/src'),
      '@prodobit/server': resolve(__dirname, './packages/server/src'),
      '@prodobit/types': resolve(__dirname, './packages/types/src'),
      '@prodobit/sdk': resolve(__dirname, './packages/sdk/src'),
      '@prodobit/react-sdk': resolve(__dirname, './packages/react-sdk/src'),
    },
    testTimeout: 10000,
    hookTimeout: 10000
  },
  resolve: {
    alias: {
      '@prodobit/config': resolve(__dirname, './packages/config/src'),
      '@prodobit/database': resolve(__dirname, './packages/database/src'),
      '@prodobit/server': resolve(__dirname, './packages/server/src'),
      '@prodobit/types': resolve(__dirname, './packages/types/src'),
      '@prodobit/sdk': resolve(__dirname, './packages/sdk/src'),
      '@prodobit/react-sdk': resolve(__dirname, './packages/react-sdk/src'),
    }
  }
})