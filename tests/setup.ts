import { vi } from 'vitest'
import '@testing-library/jest-dom'

// Mock environment variables
process.env.NODE_ENV = 'test'
process.env.DB_HOST = 'localhost'
process.env.DB_PORT = '5432'
process.env.DB_USER = 'test'
process.env.DB_PASSWORD = 'test'
process.env.DB_NAME = 'prodobit_test'
process.env.JWT_SECRET = 'test-secret-key-for-testing'
process.env.RESEND_API_KEY = 'test-resend-key'

// Mock crypto for consistent test results
Object.defineProperty(global, 'crypto', {
  value: {
    randomUUID: vi.fn(() => 'test-uuid-1234'),
    getRandomValues: vi.fn((arr: Uint8Array) => {
      for (let i = 0; i < arr.length; i++) {
        arr[i] = Math.floor(Math.random() * 256)
      }
      return arr
    })
  }
})

// Mock console methods to reduce test noise
global.console = {
  ...console,
  log: vi.fn(),
  warn: vi.fn(),
  error: vi.fn(),
  info: vi.fn(),
  debug: vi.fn(),
}

// Global test utilities
declare global {
  var mockDate: (date: string) => void
  var restoreDate: () => void
}

global.mockDate = (date: string) => {
  vi.useFakeTimers()
  vi.setSystemTime(new Date(date))
}

global.restoreDate = () => {
  vi.useRealTimers()
}