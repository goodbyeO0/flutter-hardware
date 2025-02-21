# Flutter Hardware Access Demo

A Flutter application demonstrating hardware access capabilities with Firebase integration. This project was created for ICT602 Lab Work 8.

## Features

### 1. Authentication

- Email/Password login
- Google Sign-In integration
- User profile management with Firebase

### 2. Hardware Access Features

#### Camera

- Photo capture
- Video recording
- QR code scanning with URL handling
- Real-time camera preview

#### GPS Location

- Current location detection
- Google Maps integration
- Location permission handling
- Open coordinates in external maps

#### Bluetooth

- Device discovery and pairing
- File transfer capabilities
- Bluetooth permission management
- Connection state management

#### Microphone

- Voice recording
- Audio file saving
- Recording permission handling
- Audio playback support

#### Accelerometer

- Real-time sensor data
- X, Y, Z axis measurements
- Motion detection
- Data visualization

## Getting Started

### Prerequisites

- Flutter SDK (latest stable version)
- Android Studio or VS Code
- Firebase account
- Physical device or emulator for testing

### Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/goodbyeO0/flutter-hardware.git
   cd flutter-hardware
   ```

2. Install dependencies:

   ```bash
   flutter pub get
   ```

3. Configure Firebase:

   - Add your `google-services.json` to `/android/app/`
   - Update Firebase configuration in the project

4. Run the app:
   ```bash
   flutter run
   ```

### Required Permissions

The app requires the following permissions:

- Camera
- Location (Fine and Coarse)
- Bluetooth
- Microphone
- Storage (for file operations)

## Project Structure

```
lib/
├── auth/
│   └── auth_service.dart
├── hardware/
│   ├── accelerometer_page.dart
│   ├── bluetooth_page.dart
│   ├── camera_page.dart
│   └── microphone_page.dart
├── pages/
│   ├── gps_page.dart
│   ├── hardware_page.dart
│   ├── home_page.dart
│   ├── login_page.dart
│   └── main_navigation.dart
└── main.dart
```

## Resources

- [Lab Demo Video](your-youtube-link-here)
- [Flutter Documentation](https://docs.flutter.dev/)
- [Firebase Documentation](https://firebase.google.com/docs)

## Contact

For any queries or issues, please contact:

- GitHub: [goodbyeO0](https://github.com/goodbyeO0)

## Version

Current Version: 1.0.0
