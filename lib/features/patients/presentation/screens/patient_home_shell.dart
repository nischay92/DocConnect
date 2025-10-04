import 'package:flutter/material.dart';

import '../../../../core/ui/theme/app_icons.dart';
import 'patient_discover_screen.dart';

class PatientHomeShell extends StatefulWidget {
  const PatientHomeShell({super.key});

  @override
  State<PatientHomeShell> createState() => _PatientHomeShellState();
}

class _PatientHomeShellState extends State<PatientHomeShell> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final pages = <Widget>[
      const PatientDiscoverScreen(),
      const _PlaceholderPage(
        icon: AppIcons.appointment,
        title: 'Appointments',
        subtitle: 'Manage upcoming and past visits here soon.',
      ),
      const _PlaceholderPage(
        icon: AppIcons.message,
        title: 'Messages',
        subtitle: 'Chat with your care team coming soon.',
      ),
      const _PlaceholderPage(
        icon: AppIcons.profile,
        title: 'Profile',
        subtitle: 'Review your profile and preferences here later.',
      ),
    ];

    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: pages,
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentIndex,
        onDestinationSelected: (index) => setState(() => _currentIndex = index),
        destinations: const [
          NavigationDestination(
            icon: Icon(AppIcons.specialty),
            label: 'Discover',
          ),
          NavigationDestination(
            icon: Icon(AppIcons.appointment),
            label: 'Appointments',
          ),
          NavigationDestination(
            icon: Icon(AppIcons.message),
            label: 'Messages',
          ),
          NavigationDestination(
            icon: Icon(AppIcons.profile),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

class _PlaceholderPage extends StatelessWidget {
  const _PlaceholderPage({
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  final IconData icon;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 56, color: Theme.of(context).colorScheme.primary),
            const SizedBox(height: 16),
            Text(
              title,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Text(
              subtitle,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: Theme.of(context).colorScheme.onSurfaceVariant),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
