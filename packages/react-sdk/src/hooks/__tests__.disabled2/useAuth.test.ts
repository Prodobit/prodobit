import React from 'react'
import { describe, it, expect, beforeEach, vi, afterEach } from 'vitest'
import { renderHook, act, waitFor } from '@testing-library/react'
import { QueryClient, QueryClientProvider } from '@tanstack/react-query'
import { useAuth } from '../useAuth.js'
import { ProdobitProvider } from '../../providers/ProdobitProvider.js'
import { ProdobitClient } from '@prodobit/sdk'
import type { ReactNode } from 'react'

// Mock the SDK client
vi.mock('@prodobit/sdk')
const MockProdobitClient = ProdobitClient as any

describe('useAuth', () => {
  let queryClient: QueryClient
  let mockClient: any
  let wrapper: ({ children }: { children: ReactNode }) => JSX.Element

  beforeEach(() => {
    vi.clearAllMocks()
    
    // Create fresh query client for each test
    queryClient = new QueryClient({
      defaultOptions: {
        queries: {
          retry: false,
        },
        mutations: {
          retry: false,
        },
      },
    })

    // Mock ProdobitClient
    mockClient = {
      auth: {
        login: vi.fn(),
        register: vi.fn(),
        logout: vi.fn(),
        refresh: vi.fn(),
        getCurrentUser: vi.fn(),
        isAuthenticated: vi.fn()
      },
      setAuthToken: vi.fn(),
      clearAuthToken: vi.fn()
    }

    MockProdobitClient.mockImplementation(() => mockClient)

    // Create wrapper with providers
    wrapper = ({ children }: { children: ReactNode }) => {
      return React.createElement(
        QueryClientProvider,
        { client: queryClient },
        React.createElement(
          ProdobitProvider,
          { 
            client: mockClient
          },
          children
        )
      )
    }

    // Mock localStorage
    Object.defineProperty(window, 'localStorage', {
      value: {
        getItem: vi.fn(),
        setItem: vi.fn(),
        removeItem: vi.fn(),
        clear: vi.fn()
      },
      writable: true
    })
  })

  afterEach(() => {
    vi.restoreAllMocks()
    queryClient.clear()
  })

  describe('useAuth hook', () => {
    it('should initialize with default state', () => {
      mockClient.auth.isAuthenticated.mockReturnValue(false)

      const { result } = renderHook(() => useAuth(), { wrapper })

      expect(result.current.isAuthenticated).toBe(false)
      expect(result.current.user).toBeNull()
      expect(result.current.isLoading).toBe(true) // Initially loading
      expect(result.current.error).toBeNull()
      expect(typeof result.current.login).toBe('function')
      expect(typeof result.current.logout).toBe('function')
      expect(typeof result.current.register).toBe('function')
    })

    it('should initialize as authenticated when token exists', async () => {
      const mockUser = {
        id: 'user-123',
        email: 'test@example.com',
        firstName: 'John',
        lastName: 'Doe',
        tenantId: 'tenant-123',
        roles: ['admin']
      }

      mockClient.auth.isAuthenticated.mockReturnValue(true)
      mockClient.auth.getCurrentUser.mockResolvedValue(mockUser)

      const { result } = renderHook(() => useAuth(), { wrapper })

      await waitFor(() => {
        expect(result.current.isLoading).toBe(false)
      })

      expect(result.current.isAuthenticated).toBe(true)
      expect(result.current.user).toEqual(mockUser)
    })
  })

  describe('login functionality', () => {
    it('should login successfully', async () => {
      const mockLoginResponse = {
        user: {
          id: 'user-123',
          email: 'test@example.com',
          firstName: 'John',
          lastName: 'Doe',
          tenantId: 'tenant-123',
          roles: ['admin']
        },
        token: 'jwt-token-123'
      }

      mockClient.auth.login.mockResolvedValue(mockLoginResponse)
      mockClient.auth.isAuthenticated.mockReturnValue(true)

      const { result } = renderHook(() => useAuth(), { wrapper })

      await act(async () => {
        await result.current.login('test@example.com', 'password')
      })

      expect(mockClient.auth.login).toHaveBeenCalledWith('test@example.com', 'password')
      expect(mockClient.setAuthToken).toHaveBeenCalledWith('jwt-token-123')
      expect(localStorage.setItem).toHaveBeenCalledWith('prodobit_token', 'jwt-token-123')
      
      await waitFor(() => {
        expect(result.current.isAuthenticated).toBe(true)
        expect(result.current.user).toEqual(mockLoginResponse.user)
      })
    })

    it('should handle login errors', async () => {
      const loginError = new Error('Invalid credentials')
      mockClient.auth.login.mockRejectedValue(loginError)

      const { result } = renderHook(() => useAuth(), { wrapper })

      await act(async () => {
        try {
          await result.current.login('test@example.com', 'wrongpassword')
        } catch (error) {
          // Expected error
        }
      })

      expect(result.current.isAuthenticated).toBe(false)
      expect(result.current.user).toBeNull()
      expect(result.current.error).toBe('Invalid credentials')
    })

    it('should validate email format before login', async () => {
      const { result } = renderHook(() => useAuth(), { wrapper })

      await act(async () => {
        try {
          await result.current.login('invalid-email', 'password')
        } catch (error) {
          // Expected validation error
        }
      })

      expect(mockClient.auth.login).not.toHaveBeenCalled()
      expect(result.current.error).toContain('Invalid email format')
    })

    it('should validate password before login', async () => {
      const { result } = renderHook(() => useAuth(), { wrapper })

      await act(async () => {
        try {
          await result.current.login('test@example.com', '')
        } catch (error) {
          // Expected validation error
        }
      })

      expect(mockClient.auth.login).not.toHaveBeenCalled()
      expect(result.current.error).toContain('Password is required')
    })
  })

  describe('register functionality', () => {
    const validRegisterData = {
      email: 'test@example.com',
      password: 'SecurePassword123!',
      firstName: 'John',
      lastName: 'Doe',
      tenantName: 'Test Company'
    }

    it('should register successfully', async () => {
      const mockRegisterResponse = {
        user: {
          id: 'user-123',
          email: 'test@example.com',
          firstName: 'John',
          lastName: 'Doe',
          tenantId: 'tenant-123',
          roles: ['admin']
        },
        token: 'jwt-token-123'
      }

      mockClient.auth.register.mockResolvedValue(mockRegisterResponse)
      mockClient.auth.isAuthenticated.mockReturnValue(true)

      const { result } = renderHook(() => useAuth(), { wrapper })

      await act(async () => {
        await result.current.register(validRegisterData)
      })

      expect(mockClient.auth.register).toHaveBeenCalledWith(validRegisterData)
      expect(mockClient.setAuthToken).toHaveBeenCalledWith('jwt-token-123')
      expect(localStorage.setItem).toHaveBeenCalledWith('prodobit_token', 'jwt-token-123')
      
      await waitFor(() => {
        expect(result.current.isAuthenticated).toBe(true)
        expect(result.current.user).toEqual(mockRegisterResponse.user)
      })
    })

    it('should handle registration errors', async () => {
      const registerError = new Error('Email already exists')
      mockClient.auth.register.mockRejectedValue(registerError)

      const { result } = renderHook(() => useAuth(), { wrapper })

      await act(async () => {
        try {
          await result.current.register(validRegisterData)
        } catch (error) {
          // Expected error
        }
      })

      expect(result.current.isAuthenticated).toBe(false)
      expect(result.current.error).toBe('Email already exists')
    })

    it('should validate registration data', async () => {
      const invalidData = {
        ...validRegisterData,
        email: 'invalid-email',
        password: '123' // Too short
      }

      const { result } = renderHook(() => useAuth(), { wrapper })

      await act(async () => {
        try {
          await result.current.register(invalidData)
        } catch (error) {
          // Expected validation error
        }
      })

      expect(mockClient.auth.register).not.toHaveBeenCalled()
      expect(result.current.error).toContain('Invalid')
    })
  })

  describe('logout functionality', () => {
    it('should logout successfully', async () => {
      // Setup authenticated state first
      const mockUser = {
        id: 'user-123',
        email: 'test@example.com',
        firstName: 'John',
        lastName: 'Doe',
        tenantId: 'tenant-123',
        roles: ['admin']
      }

      mockClient.auth.isAuthenticated.mockReturnValue(true)
      mockClient.auth.getCurrentUser.mockResolvedValue(mockUser)
      mockClient.auth.logout.mockResolvedValue(undefined)

      const { result } = renderHook(() => useAuth(), { wrapper })

      // Wait for initial load to complete
      await waitFor(() => {
        expect(result.current.isAuthenticated).toBe(true)
      })

      // Now logout
      await act(async () => {
        await result.current.logout()
      })

      expect(mockClient.auth.logout).toHaveBeenCalled()
      expect(mockClient.clearAuthToken).toHaveBeenCalled()
      expect(localStorage.removeItem).toHaveBeenCalledWith('prodobit_token')
      
      expect(result.current.isAuthenticated).toBe(false)
      expect(result.current.user).toBeNull()
    })

    it('should handle logout errors gracefully', async () => {
      const logoutError = new Error('Logout failed')
      mockClient.auth.logout.mockRejectedValue(logoutError)

      const { result } = renderHook(() => useAuth(), { wrapper })

      await act(async () => {
        await result.current.logout()
      })

      // Even if logout fails, should clear local state
      expect(mockClient.clearAuthToken).toHaveBeenCalled()
      expect(localStorage.removeItem).toHaveBeenCalledWith('prodobit_token')
      expect(result.current.isAuthenticated).toBe(false)
      expect(result.current.user).toBeNull()
    })
  })

  describe('token refresh functionality', () => {
    it('should refresh token automatically when expired', async () => {
      const newToken = 'new-jwt-token-456'
      const mockUser = {
        id: 'user-123',
        email: 'test@example.com',
        firstName: 'John',
        lastName: 'Doe',
        tenantId: 'tenant-123',
        roles: ['admin']
      }

      // Mock initial authentication failure (expired token)
      mockClient.auth.getCurrentUser
        .mockRejectedValueOnce(new Error('Token expired'))
        .mockResolvedValue(mockUser)
      
      mockClient.auth.refresh.mockResolvedValue({ token: newToken })
      localStorage.getItem = vi.fn().mockReturnValue('expired-token')

      const { result } = renderHook(() => useAuth(), { wrapper })

      await waitFor(() => {
        expect(mockClient.auth.refresh).toHaveBeenCalledWith('expired-token')
        expect(mockClient.setAuthToken).toHaveBeenCalledWith(newToken)
        expect(localStorage.setItem).toHaveBeenCalledWith('prodobit_token', newToken)
      })
    })

    it('should logout when refresh fails', async () => {
      mockClient.auth.getCurrentUser.mockRejectedValue(new Error('Token expired'))
      mockClient.auth.refresh.mockRejectedValue(new Error('Refresh failed'))
      localStorage.getItem = vi.fn().mockReturnValue('expired-token')

      const { result } = renderHook(() => useAuth(), { wrapper })

      await waitFor(() => {
        expect(result.current.isAuthenticated).toBe(false)
        expect(result.current.user).toBeNull()
        expect(localStorage.removeItem).toHaveBeenCalledWith('prodobit_token')
      })
    })
  })

  describe('loading states', () => {
    it('should show loading state during initial authentication check', () => {
      mockClient.auth.getCurrentUser.mockImplementation(() => 
        new Promise(resolve => setTimeout(() => resolve(null), 100))
      )

      const { result } = renderHook(() => useAuth(), { wrapper })

      expect(result.current.isLoading).toBe(true)
    })

    it('should show loading state during login', async () => {
      let resolveLogin: any
      const loginPromise = new Promise(resolve => {
        resolveLogin = resolve
      })
      
      mockClient.auth.login.mockReturnValue(loginPromise)

      const { result } = renderHook(() => useAuth(), { wrapper })

      act(() => {
        result.current.login('test@example.com', 'password')
      })

      expect(result.current.isLoading).toBe(true)

      act(() => {
        resolveLogin({
          user: { id: '123', email: 'test@example.com' },
          token: 'token'
        })
      })

      await waitFor(() => {
        expect(result.current.isLoading).toBe(false)
      })
    })
  })

  describe('error handling', () => {
    it('should clear errors on successful operations', async () => {
      const { result } = renderHook(() => useAuth(), { wrapper })

      // First, cause an error
      mockClient.auth.login.mockRejectedValueOnce(new Error('Login failed'))

      await act(async () => {
        try {
          await result.current.login('test@example.com', 'wrongpassword')
        } catch (error) {
          // Expected error
        }
      })

      expect(result.current.error).toBe('Login failed')

      // Now succeed
      mockClient.auth.login.mockResolvedValue({
        user: { id: '123', email: 'test@example.com' },
        token: 'token'
      })

      await act(async () => {
        await result.current.login('test@example.com', 'correctpassword')
      })

      expect(result.current.error).toBeNull()
    })

    it('should handle network errors gracefully', async () => {
      const networkError = new Error('Network error')
      networkError.name = 'NetworkError'
      
      mockClient.auth.login.mockRejectedValue(networkError)

      const { result } = renderHook(() => useAuth(), { wrapper })

      await act(async () => {
        try {
          await result.current.login('test@example.com', 'password')
        } catch (error) {
          // Expected error
        }
      })

      expect(result.current.error).toContain('Network error')
    })
  })

  describe('permission checking', () => {
    it('should provide permission checking utilities', async () => {
      const mockUser = {
        id: 'user-123',
        email: 'test@example.com',
        firstName: 'John',
        lastName: 'Doe',
        tenantId: 'tenant-123',
        roles: ['admin', 'user']
      }

      mockClient.auth.isAuthenticated.mockReturnValue(true)
      mockClient.auth.getCurrentUser.mockResolvedValue(mockUser)

      const { result } = renderHook(() => useAuth(), { wrapper })

      await waitFor(() => {
        expect(result.current.user).toEqual(mockUser)
      })

      // Test permission checking functions (if implemented)
      expect(result.current.hasRole?.('admin')).toBe(true)
      expect(result.current.hasRole?.('manager')).toBe(false)
      expect(result.current.hasAnyRole?.(['admin', 'manager'])).toBe(true)
      expect(result.current.hasAnyRole?.(['manager', 'supervisor'])).toBe(false)
    })
  })

  describe('edge cases', () => {
    it('should handle simultaneous login/logout calls', async () => {
      const { result } = renderHook(() => useAuth(), { wrapper })

      mockClient.auth.login.mockResolvedValue({
        user: { id: '123', email: 'test@example.com' },
        token: 'token'
      })

      // Simultaneous calls
      const loginPromise = act(async () => {
        await result.current.login('test@example.com', 'password')
      })

      const logoutPromise = act(async () => {
        await result.current.logout()
      })

      await Promise.all([loginPromise, logoutPromise])

      // Should handle gracefully without errors
      expect(result.current.error).toBeNull()
    })

    it('should handle component unmount during async operations', async () => {
      const { result, unmount } = renderHook(() => useAuth(), { wrapper })

      const longRunningLogin = new Promise(resolve => 
        setTimeout(() => resolve({
          user: { id: '123', email: 'test@example.com' },
          token: 'token'
        }), 1000)
      )

      mockClient.auth.login.mockReturnValue(longRunningLogin)

      act(() => {
        result.current.login('test@example.com', 'password')
      })

      // Unmount component before login completes
      unmount()

      // Should not cause memory leaks or errors
      await expect(longRunningLogin).resolves.toBeDefined()
    })

    it('should handle malformed token in localStorage', () => {
      localStorage.getItem = vi.fn().mockReturnValue('malformed.token.here')
      
      mockClient.auth.getCurrentUser.mockRejectedValue(new Error('Invalid token'))
      mockClient.auth.refresh.mockRejectedValue(new Error('Refresh failed'))

      const { result } = renderHook(() => useAuth(), { wrapper })

      // Should clear invalid token and reset auth state
      expect(localStorage.removeItem).toHaveBeenCalledWith('prodobit_token')
      expect(result.current.isAuthenticated).toBe(false)
    })
  })
})