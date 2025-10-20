# Changelog

All notable changes to the Prodobit Flutter SDK will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [0.13.1] - 2025-10-20

### Fixed
- 🐛 **CRITICAL**: Included all generated files (*.g.dart, *.freezed.dart) in the package distribution
- ✅ Fixed "method toJson not defined" errors by committing Freezed and JSON serialization generated files
- 📦 Package is now fully functional when installed from pub.dev

### Technical Details
- Previously, generated files were excluded by .gitignore, causing the published package to be incomplete
- All 54 generated model and provider files are now properly tracked in git
- Users can now use the SDK directly from pub.dev without local code generation

## [0.13.0] - 2025-10-20

### Added
- 🔐 Extended `TenantMembership` model with role information (`roleId`, `roleName`, `roleDescription`, `roleColor`)
- ✨ Added `AuthMethodData` model for auth method details in login responses
- 🛡️ Added `csrfToken` to `SessionData` model for CSRF protection
- 🔑 Added `refreshToken` and `authMethod` fields to `LoginResponseData`

### Changed
- 🔄 Updated auth models to match server API v1 response structure
- 📦 Improved tenant membership model with role details from database joined queries
- 🎯 Aligned with server-side TypeScript type definitions from @prodobit/types

### Breaking Changes
- ⚠️ `TenantMembership` now requires `roleId` and `roleName` fields instead of just `role`
- ⚠️ `SessionData` now requires `csrfToken` field
- ⚠️ `LoginResponseData` now requires `authMethod` field

### Migration Guide
If you're upgrading from 0.12.x or earlier:
1. Update `TenantMembership` usage to use `roleName` instead of `role`
2. Handle `csrfToken` from session data in your auth flow
3. Access auth method details from `authMethod` field in login response
4. Regenerate code with `flutter pub run build_runner build --delete-conflicting-outputs`

## [0.5.0] - 2025-01-17

### Changed
- 🔄 Updated to align with Prodobit framework version 0.5.0
- 📦 Synchronized versioning with main framework packages
- 🔧 Enhanced publish pipeline integration
- 📚 Updated dependencies to latest stable versions

### Improved
- 🛠️ Better integration with Prodobit monorepo publish process
- 📋 Enhanced code generation workflow
- 🔍 Improved static analysis configuration

## [0.1.0] - 2025-01-27

### Added
- 🎉 Initial release of Prodobit Flutter SDK
- 🔐 JWT-based authentication with automatic token refresh
- 📦 Complete inventory management (items, stock, locations)
- 👥 User management and multi-tenancy support
- 🌐 Modern HTTP client with error handling and retry logic
- 🗂️ File upload with progress tracking
- ⚡ Riverpod state management integration
- 🎯 Type-safe models with Freezed and JSON serialization
- 🛡️ Comprehensive error handling with custom exceptions
- 📱 Mobile-optimized API client
- 🔧 Extensive utility functions and validators
- 📚 Complete API coverage for Prodobit open-source features

### Core Features
- **Authentication Service**: Login, logout, password reset, token management
- **Inventory Service**: Items, stock management, locations, movements
- **User Service**: Profile management, user operations, role management
- **File Service**: Upload, download, file management
- **Multi-tenant Support**: Organization context management

### Developer Experience
- **Modern Architecture**: Clean architecture with separation of concerns
- **Type Safety**: Full type safety with Freezed models
- **State Management**: Reactive programming with Riverpod
- **Error Handling**: Structured exceptions and error recovery
- **Validation**: Built-in form validators and data validation
- **Extensions**: Helpful extensions for common operations
- **Documentation**: Comprehensive README with examples

### Technical Stack
- Flutter 3.19+
- Dart 3.3+
- Riverpod 2.5+ for state management
- Dio 5.4+ for networking
- Freezed 2.5+ for models
- flutter_secure_storage for secure token storage
- Logger for debugging

### Supported Platforms
- iOS
- Android
- Web (limited support)
- Desktop (limited support)

---

## Upcoming Features (Roadmap)

### [0.2.0] - Planned
- 📊 Basic analytics and reporting
- 🏪 Sales order management
- 🏭 Manufacturing (BOM) support
- 🎨 UI components library
- 📱 Offline support with local storage
- 🔔 Real-time notifications (WebSocket)

### [0.3.0] - Planned  
- 🤝 Party (customer/supplier) management
- 🎯 Advanced search and filtering
- 📋 Custom field support
- 🌐 Internationalization (i18n)
- 🎨 Theming support
- 📊 Advanced analytics widgets

### [1.0.0] - Planned
- 🚀 Production ready
- 📈 Performance optimizations
- 🛡️ Enhanced security features
- 📚 Complete API documentation
- 🎯 Plugin architecture
- 🌟 Premium features integration

---

## Migration Guides

### From 0.0.x to 0.1.0
This is the initial release, no migration needed.

---

## Contributing

We welcome contributions! Please see our [Contributing Guide](CONTRIBUTING.md) for details.

## Support

- 📖 [Documentation](https://docs.prodobit.com/flutter-sdk)
- 💬 [Discussions](https://github.com/prodobit/prodobit/discussions)
- 🐛 [Issues](https://github.com/prodobit/prodobit/issues)
- 📧 Email: support@prodobit.com

---

**Happy Building!** 🚀