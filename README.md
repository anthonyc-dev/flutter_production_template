# Flutter Template

A robust, modular, and scalable Flutter application built with Clean Architecture principles.

## 🚀 Overview

This project serves as a comprehensive template for a production-ready Flutter application. It incorporates best practices in folder structure, state management, and dependency injection.

## 🏗️ Architecture

The project follows a **Modified Clean Architecture / Feature-Driven** structure:

- **Core**: Contains infrastructure-level code, shared constants, themes, and base utilities.
- **Shared**: Houses reusable UI components (widgets, dialogs, layouts) used across multiple features.
- **Features**: Each business module (Auth, Inventory, Sales) is isolated with its own:
  - **Data Layer**: API models, repositories, and data sources (Remote/Local).
  - **Domain Layer**: Business logic and use cases.
  - **Presentation Layer**: UI logic (BLoC/Riverpod), Pages, and Widgets.
- **Services**: Abstracted external integrations (API Clients, Secure Storage, Notifications).

## 🛠️ Tech Stack

- **State Management**: `flutter_bloc`, `riverpod`, `provider` (Flexible options available).
- **Navigation**: `go_router` or `auto_route`.
- **Networking**: `dio` with `retrofit` for type-safe API calls.
- **Local Storage**: `hive`, `flutter_secure_storage`, `shared_preferences`.
- **UI/UX**: `flutter_svg`, `lottie`, `animations`, `cached_network_image`.
- **Firebase**: Integrated for messaging and analytics.

## 📁 Folder Structure

```
lib/
├── core/         # Infrastructure & utilities
├── shared/       # Cross-feature widgets
├── features/     # Business modules (auth, inventory, etc.)
├── services/     # External service integrations
├── routes/       # Navigation configuration
├── injection/    # Dependency Injection
└── l10n/         # Localization
```

## 📜 Documentation

For detailed instructions on how to use this template, clone the project, or extend it, see [TEMPLATE_GUIDE.md](file:///c:/Users/Hp/Desktop/DevFiles/real-project/pos/TEMPLATE_GUIDE.md).
