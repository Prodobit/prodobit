import { describe, it, expect, beforeEach, vi } from 'vitest'
import { RBACManager, requirePermission, type User } from '../rbac.js'

describe('RBACManager', () => {
  let rbacManager: RBACManager

  beforeEach(() => {
    rbacManager = new RBACManager()
  })

  describe('registerPermission', () => {
    it('should register a single permission correctly', () => {
      rbacManager.registerPermission('user:read', ['admin', 'user'])
      
      const permissions = rbacManager.getPermissions()
      expect(permissions['user:read']).toEqual(['admin', 'user'])
    })

    it('should allow overriding existing permissions', () => {
      rbacManager.registerPermission('user:read', ['admin'])
      rbacManager.registerPermission('user:read', ['admin', 'user', 'guest'])
      
      const permissions = rbacManager.getPermissions()
      expect(permissions['user:read']).toEqual(['admin', 'user', 'guest'])
    })
  })

  describe('registerPermissions', () => {
    it('should register multiple permissions at once', () => {
      const permissions = {
        'user:read': ['admin', 'user'],
        'user:write': ['admin'],
        'tenant:read': ['admin', 'user'],
        'tenant:write': ['admin']
      }

      rbacManager.registerPermissions(permissions)
      
      const registered = rbacManager.getPermissions()
      expect(registered).toEqual(permissions)
    })

    it('should handle empty permissions object', () => {
      rbacManager.registerPermissions({})
      
      const permissions = rbacManager.getPermissions()
      expect(permissions).toEqual({})
    })
  })

  describe('hasPermission', () => {
    beforeEach(() => {
      rbacManager.registerPermissions({
        'user:read': ['admin', 'user'],
        'user:write': ['admin'],
        'tenant:read': ['admin', 'user', 'manager'],
        'tenant:delete': ['admin']
      })
    })

    it('should return true when user has required role', () => {
      const user: User = {
        id: '1',
        email: 'admin@test.com',
        tenantId: 'tenant-1',
        roles: ['admin']
      }

      expect(rbacManager.hasPermission(user, 'user:read')).toBe(true)
      expect(rbacManager.hasPermission(user, 'user:write')).toBe(true)
      expect(rbacManager.hasPermission(user, 'tenant:delete')).toBe(true)
    })

    it('should return true when user has multiple roles including required one', () => {
      const user: User = {
        id: '1',
        email: 'manager@test.com',
        tenantId: 'tenant-1',
        roles: ['user', 'manager']
      }

      expect(rbacManager.hasPermission(user, 'user:read')).toBe(true)
      expect(rbacManager.hasPermission(user, 'tenant:read')).toBe(true)
    })

    it('should return false when user lacks required role', () => {
      const user: User = {
        id: '1',
        email: 'user@test.com',
        tenantId: 'tenant-1',
        roles: ['user']
      }

      expect(rbacManager.hasPermission(user, 'user:write')).toBe(false)
      expect(rbacManager.hasPermission(user, 'tenant:delete')).toBe(false)
    })

    it('should return false and warn when permission is not defined', () => {
      const consoleSpy = vi.spyOn(console, 'warn').mockImplementation(() => {})
      
      const user: User = {
        id: '1',
        email: 'user@test.com',
        tenantId: 'tenant-1',
        roles: ['admin']
      }

      expect(rbacManager.hasPermission(user, 'undefined:action')).toBe(false)
      expect(consoleSpy).toHaveBeenCalledWith('⚠️  No permission defined for action: undefined:action')
      
      consoleSpy.mockRestore()
    })

    it('should handle user with empty roles array', () => {
      const user: User = {
        id: '1',
        email: 'user@test.com',
        tenantId: 'tenant-1',
        roles: []
      }

      expect(rbacManager.hasPermission(user, 'user:read')).toBe(false)
    })
  })

  describe('getPermissions', () => {
    it('should return empty object initially', () => {
      const permissions = rbacManager.getPermissions()
      expect(permissions).toEqual({})
    })

    it('should return all registered permissions', () => {
      const testPermissions = {
        'user:read': ['admin', 'user'],
        'user:write': ['admin']
      }

      rbacManager.registerPermissions(testPermissions)
      
      const permissions = rbacManager.getPermissions()
      expect(permissions).toEqual(testPermissions)
    })
  })
})

describe('requirePermission middleware', () => {
  let mockContext: any
  let mockNext: any
  let rbacManager: RBACManager

  beforeEach(() => {
    // Reset global RBAC instance
    rbacManager = new RBACManager()
    rbacManager.registerPermissions({
      'user:read': ['admin', 'user'],
      'user:write': ['admin']
    })
    
    mockNext = vi.fn()
    mockContext = {
      get: vi.fn(),
      json: vi.fn().mockReturnValue({ error: 'mock response' })
    }
  })

  it('should call next when user has required permission', async () => {
    const user: User = {
      id: '1',
      email: 'admin@test.com',
      tenantId: 'tenant-1',
      roles: ['admin']
    }

    // Register the permission first
    const { rbacManager } = await import('../rbac.js')
    rbacManager.registerPermission('user:read', ['admin'])

    mockContext.get.mockReturnValue(user)

    const middleware = requirePermission('user:read')
    await middleware(mockContext, mockNext)

    expect(mockNext).toHaveBeenCalled()
    expect(mockContext.json).not.toHaveBeenCalled()
  })

  it('should return 401 when user is not authenticated', async () => {
    mockContext.get.mockReturnValue(null)

    const middleware = requirePermission('user:read')
    const result = await middleware(mockContext, mockNext)

    expect(mockNext).not.toHaveBeenCalled()
    expect(mockContext.json).toHaveBeenCalledWith(
      { error: 'Authentication required' },
      401
    )
  })

  it('should return 403 when user lacks required permission', async () => {
    const user: User = {
      id: '1',
      email: 'user@test.com',
      tenantId: 'tenant-1',
      roles: ['user']
    }

    mockContext.get.mockReturnValue(user)

    const middleware = requirePermission('user:write')
    await middleware(mockContext, mockNext)

    expect(mockNext).not.toHaveBeenCalled()
    expect(mockContext.json).toHaveBeenCalledWith(
      {
        error: 'Insufficient permissions',
        required: 'user:write',
        userRoles: ['user']
      },
      403
    )
  })

  it('should handle undefined user gracefully', async () => {
    mockContext.get.mockReturnValue(undefined)

    const middleware = requirePermission('user:read')
    await middleware(mockContext, mockNext)

    expect(mockNext).not.toHaveBeenCalled()
    expect(mockContext.json).toHaveBeenCalledWith(
      { error: 'Authentication required' },
      401
    )
  })
})