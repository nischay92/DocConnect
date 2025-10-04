import 'package:flutter/material.dart';

import '../../domain/user_role.dart';

class HomePlaceholderScreen extends StatelessWidget {
  const HomePlaceholderScreen({
    super.key,
    required this.role,
  });

  final UserRole role;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('DocConnect Home')),
      body: Center(
        child: Text('Welcome ${role.label}! Dashboard coming soon.'),
      ),
    );
  }
}
