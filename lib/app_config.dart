enum AppEnvironment { dev, prod, staging }

class AppConfig {
  static AppEnvironment environment = AppEnvironment.dev;

  static String get apiBaseUrl {
    switch (environment) {
      case AppEnvironment.dev:
        return 'https://api.dev.example.com';
      case AppEnvironment.staging:
        return 'https://api.staging.example.com';
      case AppEnvironment.prod:
        return 'https://api.example.com';
    }
  }
}
