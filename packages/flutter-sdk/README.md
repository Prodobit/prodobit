# Prodobit Flutter SDK

A modern, type-safe Flutter SDK for building manufacturing and business applications with the Prodobit framework.

## 🚀 Features

- **Modern Architecture**: Built with latest Flutter patterns and best practices
- **Type Safety**: Full TypeScript-equivalent type safety with Freezed models
- **State Management**: Riverpod for reactive state management
- **Authentication**: Secure JWT-based authentication with token refresh
- **Networking**: Robust HTTP client with error handling and retry logic
- **Caching**: Intelligent caching for better performance
- **File Upload**: Built-in file upload with progress tracking
- **Multi-tenancy**: Organization context management
- **Error Handling**: Comprehensive error handling with custom exceptions

## 📦 Installation

Add to your `pubspec.yaml`:

```yaml
dependencies:
  prodobit_flutter_sdk: ^0.1.0
  flutter_riverpod: ^2.5.1
```

## 🛠 Setup

### 1. Initialize the Client

```dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prodobit_flutter_sdk/prodobit_flutter_sdk.dart';

// Override the client provider with your configuration
final prodobitClientProvider = Provider<ProdobitClient>((ref) {
  return ProdobitClient(
    baseUrl: 'https://your-api.prodobit.com',
    enableLogging: kDebugMode,
  );
});
```

### 2. Wrap Your App

```dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'My Manufacturing App',
      home: AuthWrapper(),
    );
  }
}
```

### 3. Initialize Authentication

```dart
class AuthWrapper extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authProvider);
    
    return authState.when(
      data: (state) => state.when(
        authenticated: (user, org) => HomeScreen(),
        unauthenticated: () => LoginScreen(),
        loading: () => LoadingScreen(),
        error: (message) => ErrorScreen(message: message),
        initial: () => SplashScreen(),
      ),
      loading: () => LoadingScreen(),
      error: (error, stack) => ErrorScreen(message: error.toString()),
    );
  }
}
```

## 🔐 Authentication

### OTP Email Authentication

Prodobit uses OTP (One-Time Password) email authentication. Users receive a verification code via email.

```dart
class LoginScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: LoginFlow(),
    );
  }
}

class LoginFlow extends ConsumerStatefulWidget {
  @override
  ConsumerState<LoginFlow> createState() => _LoginFlowState();
}

class _LoginFlowState extends ConsumerState<LoginFlow> {
  final _emailController = TextEditingController();
  final _otpController = TextEditingController();
  bool _otpSent = false;

  @override
  Widget build(BuildContext context) {
    final authNotifier = ref.read(authProvider.notifier);
    
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (!_otpSent) ...[
            // Email input step
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email Address',
                hintText: 'Enter your email',
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                try {
                  await authNotifier.sendOTP(_emailController.text);
                  setState(() {
                    _otpSent = true;
                  });
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('OTP sent to your email')),
                  );
                } catch (e) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Failed to send OTP: $e')),
                  );
                }
              },
              child: Text('Send OTP'),
            ),
          ] else ...[
            // OTP verification step
            Text(
              'Enter the verification code sent to ${_emailController.text}',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _otpController,
              decoration: InputDecoration(
                labelText: 'Verification Code',
                hintText: 'Enter 6-digit code',
              ),
              keyboardType: TextInputType.number,
              maxLength: 6,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                try {
                  await authNotifier.verifyOTP(
                    email: _emailController.text,
                    otp: _otpController.text,
                  );
                } catch (e) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Invalid OTP: $e')),
                  );
                }
              },
              child: Text('Verify & Login'),
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () async {
                try {
                  await authNotifier.sendOTP(_emailController.text);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('New OTP sent')),
                  );
                } catch (e) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Failed to resend OTP: $e')),
                  );
                }
              },
              child: Text('Resend OTP'),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  _otpSent = false;
                  _otpController.clear();
                });
              },
              child: Text('Change Email'),
            ),
          ],
        ],
      ),
    );
  }
}
```

### Token Management

After successful OTP verification, the SDK automatically handles JWT tokens:

```dart
// Tokens are automatically stored securely and refreshed when needed
// No manual token management required
```

### Logout

```dart
ElevatedButton(
  onPressed: () async {
    final authNotifier = ref.read(authProvider.notifier);
    await authNotifier.logout();
  },
  child: Text('Logout'),
),
```

## 📦 Inventory Management

### List Items

```dart
class ItemsScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final itemsAsync = ref.watch(itemsProvider());
    
    return Scaffold(
      appBar: AppBar(title: Text('Items')),
      body: itemsAsync.when(
        data: (paginatedItems) => ListView.builder(
          itemCount: paginatedItems.data.length,
          itemBuilder: (context, index) {
            final item = paginatedItems.data[index];
            return ListTile(
              title: Text(item.displayName),
              subtitle: Text(item.description ?? ''),
              leading: item.hasImage 
                ? Image.network(item.imageUrl!)
                : Icon(Icons.inventory),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ItemDetailScreen(itemId: item.id),
                ),
              ),
            );
          },
        ),
        loading: () => Center(child: CircularProgressIndicator()),
        error: (error, stack) => ErrorWidget(error),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CreateItemScreen()),
        ),
        child: Icon(Icons.add),
      ),
    );
  }
}
```

### Create Item

```dart
class CreateItemScreen extends ConsumerWidget {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _codeController = TextEditingController();
  final _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final operations = ref.read(inventoryOperationsProvider.notifier);
    
    return Scaffold(
      appBar: AppBar(title: Text('Create Item')),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(labelText: 'Name'),
                validator: (value) => Validators.required(value, fieldName: 'Name'),
              ),
              TextFormField(
                controller: _codeController,
                decoration: InputDecoration(labelText: 'Code'),
                validator: Validators.itemCode,
              ),
              TextFormField(
                controller: _descriptionController,
                decoration: InputDecoration(labelText: 'Description'),
                maxLines: 3,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    try {
                      await operations.createItem(
                        ItemRequest(
                          name: _nameController.text,
                          code: _codeController.text,
                          description: _descriptionController.text.isEmpty 
                            ? null : _descriptionController.text,
                          type: ItemTypes.product,
                          unit: Defaults.unit,
                        ),
                      );
                      Navigator.pop(context);
                    } catch (e) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Error: ${e.toString()}')),
                      );
                    }
                  }
                },
                child: Text('Create Item'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
```

### Stock Management

```dart
class StockScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lowStockAsync = ref.watch(lowStockItemsProvider);
    
    return Scaffold(
      appBar: AppBar(title: Text('Stock Management')),
      body: Column(
        children: [
          // Low Stock Alert
          Container(
            padding: EdgeInsets.all(16),
            color: Colors.orange.shade100,
            child: lowStockAsync.when(
              data: (lowStockItems) => lowStockItems.isEmpty
                ? Text('All items are well stocked')
                : Text('${lowStockItems.length} items are low on stock'),
              loading: () => Text('Checking stock levels...'),
              error: (_, __) => Text('Error checking stock levels'),
            ),
          ),
          
          // Stock Actions
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              padding: EdgeInsets.all(16),
              children: [
                _buildActionCard(
                  icon: Icons.add_box,
                  title: 'Stock In',
                  onTap: () => _showStockAdjustment(context, ref, isIncrease: true),
                ),
                _buildActionCard(
                  icon: Icons.remove_circle,
                  title: 'Stock Out', 
                  onTap: () => _showStockAdjustment(context, ref, isIncrease: false),
                ),
                _buildActionCard(
                  icon: Icons.swap_horiz,
                  title: 'Transfer',
                  onTap: () => _showStockTransfer(context, ref),
                ),
                _buildActionCard(
                  icon: Icons.history,
                  title: 'Movements',
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => StockMovementsScreen(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActionCard({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return Card(
      child: InkWell(
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 48),
            SizedBox(height: 8),
            Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }

  void _showStockAdjustment(
    BuildContext context, 
    WidgetRef ref, {
    required bool isIncrease,
  }) {
    // Implementation for stock adjustment dialog
  }

  void _showStockTransfer(BuildContext context, WidgetRef ref) {
    // Implementation for stock transfer dialog
  }
}
```

## 🔍 Advanced Usage

### Custom Error Handling

```dart
class CustomErrorHandler {
  static void handle(Object error, WidgetRef ref) {
    if (error is AuthException) {
      // Handle authentication errors
      ref.read(authProvider.notifier).logout();
      // Navigate to login
    } else if (error is ApiException) {
      // Handle API errors
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(error.message)),
      );
    } else {
      // Handle other errors
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('An unexpected error occurred')),
      );
    }
  }
}
```

### File Upload

```dart
class FileUploadWidget extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      onPressed: () async {
        final picker = ImagePicker();
        final image = await picker.pickImage(source: ImageSource.gallery);
        
        if (image != null) {
          try {
            final client = ref.read(prodobitClientProvider);
            final uploadResponse = await client.file.uploadFile(
              image.path,
              onProgress: (progress) {
                // Update progress indicator
                print('Upload progress: ${(progress * 100).toInt()}%');
              },
            );
            
            print('File uploaded: ${uploadResponse.url}');
          } catch (e) {
            print('Upload failed: $e');
          }
        }
      },
      child: Text('Upload Image'),
    );
  }
}
```

### Search & Filtering

```dart
class ItemSearchScreen extends ConsumerStatefulWidget {
  @override
  ConsumerState<ItemSearchScreen> createState() => _ItemSearchScreenState();
}

class _ItemSearchScreenState extends ConsumerState<ItemSearchScreen> {
  final _searchController = TextEditingController();
  String _searchQuery = '';

  @override
  Widget build(BuildContext context) {
    final itemsAsync = ref.watch(itemsProvider(
      query: QueryParams(
        search: _searchQuery,
        limit: 50,
      ),
    ));

    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: _searchController,
          decoration: InputDecoration(
            hintText: 'Search items...',
            border: InputBorder.none,
          ),
          onChanged: (value) {
            setState(() {
              _searchQuery = value;
            });
          },
        ),
      ),
      body: itemsAsync.when(
        data: (paginatedItems) => ListView.builder(
          itemCount: paginatedItems.data.length,
          itemBuilder: (context, index) {
            final item = paginatedItems.data[index];
            return ListTile(
              title: Text(item.displayName),
              subtitle: Text(item.description ?? ''),
            );
          },
        ),
        loading: () => Center(child: CircularProgressIndicator()),
        error: (error, stack) => ErrorWidget(error),
      ),
    );
  }
}
```

## 📝 Best Practices

### 1. Error Handling
Always wrap async operations in try-catch blocks and handle different exception types appropriately.

### 2. State Management
Use Riverpod providers consistently and invalidate them when data changes.

### 3. Type Safety
Leverage Freezed models for type safety and use the built-in validators for form validation.

### 4. Performance
Use pagination for large datasets and implement proper loading states.

### 5. Security
Never store sensitive data in plain text. The SDK handles token storage securely.

## 🏗 Architecture

The SDK follows clean architecture principles:

- **Core**: API client, configuration, and base types
- **Models**: Freezed data models with JSON serialization
- **Services**: Business logic and API interactions
- **Providers**: Riverpod state management
- **Utils**: Helpers, extensions, and utilities

## 🤝 Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🆘 Support

For support, please visit [Prodobit Documentation](https://docs.prodobit.com) or open an issue on GitHub.

---

Built with ❤️ by the Prodobit team