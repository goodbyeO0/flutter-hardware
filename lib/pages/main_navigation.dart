import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'hardware_page.dart';
import 'login_page.dart';

class MainNavigation extends StatelessWidget {
  const MainNavigation({super.key});

  Future<void> _signOut(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    if (context.mounted) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const LoginPage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Hardware Lab'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () => _signOut(context),
          ),
        ],
      ),
      body: Column(
        children: [
          // User info card at the top
          Container(
            padding: const EdgeInsets.all(16),
            color: const Color(0xFF3674B5),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: const Color(0xFFD1F8EF),
                  child: Text(
                    user?.email?.substring(0, 1).toUpperCase() ?? 'U',
                    style: const TextStyle(
                      color: Color(0xFF3674B5),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Text(
                    user?.email ?? 'Unknown User',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Hardware page content
          const Expanded(
            child: HardwarePage(),
          ),
        ],
      ),
    );
  }
}
