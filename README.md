# TestApp

TestApp” --org com.test.app”

---

## Getting Started 🚀

This project contains 3 flavors:

- development
- staging
- production

To run the desired flavor either use the launch configuration in VSCode/Android Studio or use the following commands:

```sh
# Development
$ flutter run --flavor development --target lib/main_development.dart
$ flutter build apk --flavor development --target lib/main_development.dart
$ flutter build appbundle --flavor development --target lib/main_development.dart


# Staging
$ flutter run --flavor staging --target lib/main_staging.dart
$ flutter build apk --flavor staging --target lib/main_staging.dart
$ flutter build appbundle --flavor staging --target lib/main_staging.dart

# Production
$ flutter run --flavor production --target lib/main_production.dart
$ flutter build apk --flavor production --target lib/main_production.dart
$ flutter build appbundle --flavor production --target lib/main_production.dart

```

_\*TestApp works on iOS, Android._
Just use the credentials from reqres.in sample for auth



