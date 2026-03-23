# Flutter Project Template Guide

This guide explains how to clone, set up, and use this Flutter project architecture.

## 📥 Cloning the Project

To use this project as a template for a new application:

1. **Clone the repository**:
   ```bash
   git clone <repository_url>
   cd pos
   ```

2. **Remove the existing git history (Optional, for new projects)**:
   ```bash
   rm -rf .git
   git init
   ```

3. **Install Dependencies**:
   ```bash
   flutter pub get
   ```

4. **Run Code Generation** (Important for Retrofit, AutoRoute, etc.):
   ```bash
   dart run build_runner build --delete-conflicting-outputs
   ```

## 🏗️ Adding a New Feature

To add a new feature (e.g., `customers`):

1. Create the directory structure:
   ```
   lib/features/customers/
   ├── data/
   │   ├── models/
   │   ├── repositories/
   │   └── datasources/
   ├── domain/
   ├── presentation/
   │   ├── bloc/
   │   ├── pages/
   │   └── widgets/
   └── customers_feature.dart (Barrel file)
   ```

2. Register the feature in your dependency injection and routing logic.

## 🚀 Environment Configuration

Modify `lib/app_config.dart` to manage different environments:

```dart
enum AppEnvironment { dev, staging, prod }
// ...
```

## 🛠️ Key Dependencies Reference

- **Dio & Retrofit**: Used for API integration in `lib/services/api/`.
- **Hive**: Recommended for fast local nosql storage in `lib/services/storage/`.
- **GoRouter/AutoRoute**: Configure navigation in `lib/routes/`.
- **BLoC/Riverpod**: Choose your preferred state management for the `presentation` layer.

## 🧪 Testing

Place your unit and widget tests in the `test/` folder, mirroring the `lib/` structure.
