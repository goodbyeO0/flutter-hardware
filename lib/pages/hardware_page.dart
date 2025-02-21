import 'package:flutter/material.dart';
import '../hardware/camera_page.dart';
import 'gps_page.dart';
import '../hardware/bluetooth_page.dart';
import '../hardware/microphone_page.dart';
import '../hardware/accelerometer_page.dart';

class HardwarePage extends StatefulWidget {
  const HardwarePage({super.key});

  @override
  State<HardwarePage> createState() => _HardwarePageState();
}

class _HardwarePageState extends State<HardwarePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hardware Access'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildHardwareButton(
            icon: Icons.camera_alt,
            title: 'Camera',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CameraPage(),
                ),
              );
            },
          ),
          _buildHardwareButton(
            icon: Icons.location_on,
            title: 'GPS Location',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const GPSPage(),
                ),
              );
            },
          ),
          _buildHardwareButton(
            icon: Icons.bluetooth,
            title: 'Bluetooth',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const BluetoothPage(),
                ),
              );
            },
          ),
          _buildHardwareButton(
            icon: Icons.mic,
            title: 'Microphone',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MicrophonePage(),
                ),
              );
            },
          ),
          _buildHardwareButton(
            icon: Icons.screen_rotation,
            title: 'Accelerometer',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AccelerometerPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildHardwareButton({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Card(
        elevation: 4,
        child: ListTile(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          leading: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: const Color(0xFF578FCA),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(icon, color: Colors.white, size: 28),
          ),
          title: Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFF3674B5),
            ),
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios,
            color: Color(0xFF578FCA),
          ),
          onTap: onTap,
        ),
      ),
    );
  }
}
