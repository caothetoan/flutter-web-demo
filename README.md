# flutterwebdemo

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.



dart pub outdated --mode=null-safety
dart pub upgrade --null-safety

flutter run --no-sound-null-safety

dart migrate --apply-changes

flutter run -d chrome --web-renderer html
flutter build web --web-renderer canvaskit

flutter run -d chrome --web-renderer canvaskit
flutter build web --web-renderer html

flutter build web --web-renderer canvaskit --release

void _showWelcomeScreen() {
  Navigator.of(context).pushNamed('/welcome');
}