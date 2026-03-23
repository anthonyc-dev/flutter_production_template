import 'package:flutter/material.dart';
import '../widgets/header_section.dart';
import '../widgets/section_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.surface,
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          const SliverToBoxAdapter(child: HeaderSection()),
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(20, 24, 20, 40),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                const SectionCard(
                  title: "Architecture",
                  icon: Icons.architecture_rounded,
                  content: """
This project follows a Feature-First + Clean Architecture approach.

• Features are modular and self-contained
• Each feature implements:
  - Presentation (UI & BLoC)
  - Domain (Entities & Use Cases)
  - Data (Repositories & Data Sources)

Ensures maximum scalability, testability, and maintainability.
""",
                ),
                const SectionCard(
                  title: "Folder Structure",
                  icon: Icons.folder_copy_rounded,
                  content: """
lib/
 ├── core/         # constants, theme, utils
 ├── shared/       # reusable widgets
 ├── features/     # feature-based modules
 │    ├── auth/
 │    ├── inventory/
 │    └── sales/
 ├── services/     # API, storage, notifications
 ├── routes/       # navigation logic
 └── injection/    # dependency injection
""",
                ),
                const SectionCard(
                  title: "State Management",
                  icon: Icons.psychology_rounded,
                  content: """
Standardized with BLoC / Cubit pattern.

• Business logic fully decoupled from UI
• Predictive state transitions
• Built-in support for testing and persistence
""",
                ),
                const SectionCard(
                  title: "Networking & Storage",
                  icon: Icons.cloud_sync_rounded,
                  content: """
• Dio + Retrofit: Type-safe API client
• Flutter Secure Storage: Sensitive tokens
• Hive: High-performance local database
• Shared Preferences: Lightweight settings
""",
                ),
                const SectionCard(
                  title: "Getting Started",
                  icon: Icons.rocket_launch_rounded,
                  content: """
1. Clone the template repository
2. Run 'flutter pub get' to install dependencies
3. Configure your API base URL in 'app_config.dart'
4. Start building features inside the '/features' directory
""",
                ),
                const SizedBox(height: 20),
                Center(
                  child: Text(
                    'Built with ❤️ by Anthony',
                    style: theme.textTheme.labelMedium?.copyWith(
                      color: colorScheme.onSurfaceVariant.withOpacity(0.5),
                    ),
                  ),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
