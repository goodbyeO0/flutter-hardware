# LAB GROUP FLUTTER PROJECT

A Flutter project created for lab group work with hardware integration capabilities.

## Prerequisites

- Flutter SDK (latest stable version)
- Android Studio or VS Code with Flutter plugins
- Git
- A physical device or emulator for testing

## Setup Instructions

1. Clone the repository:

   ```bash
   git clone https://github.com/goodbyeO0/flutter-hardware.git
   cd lab_group
   ```

2. Install dependencies:

   ```bash
   flutter pub get
   ```

3. Check Flutter setup:

   ```bash
   flutter doctor
   ```

4. Run the app:
   ```bash
   flutter run
   ```

## Development Environment Setup

### Android Studio

- Install Android Studio
- Install the Flutter and Dart plugins
- Open the project folder
- Configure an emulator or connect a physical device
- Click 'Run' or press Shift + F10

### VS Code

- Install VS Code
- Install Flutter and Dart extensions
- Open the project folder
- Select a device from the bottom status bar
- Press F5 or 'Run > Start Debugging'

## Project Structure

- `lib/`: Contains the main Dart code
- `android/`: Android-specific files
- `ios/`: iOS-specific files
- `test/`: Unit and widget tests
- `assets/`: Images, fonts, and other resources

## Build Commands

- Debug mode: `flutter run`
- Release mode: `flutter run --release`
- Build APK: `flutter build apk`
- Build iOS: `flutter build ios`

## Troubleshooting

1. Dependency issues:

   ```bash
   flutter clean
   flutter pub get
   ```

2. Emulator not detected:

   - Restart IDE
   - Run: `flutter doctor`

3. Platform-specific issues:
   - Android: Check `android/build.gradle`
   - iOS: Check `ios/Runner.xcworkspace`

## Resources

For help getting started with Flutter development:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)
- [Online documentation](https://docs.flutter.dev/)

## Contact

For any queries or issues, please contact:

- GitHub: [goodbyeO0](https://github.com/goodbyeO0)

## Version

Current Version: 1.0.0
