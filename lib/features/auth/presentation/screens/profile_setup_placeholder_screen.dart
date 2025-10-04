import 'package:flutter/material.dart';

class ProfileSetupPlaceholderScreen extends StatelessWidget {
  const ProfileSetupPlaceholderScreen({super.key});

  static const routePath = '/profile-setup';
  static const routeName = 'profile-setup';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Complete Profile')),
      body: const Center(
        child: Text('Profile setup flow coming soon.'),
      ),
    );
  }
}
