import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../controllers/auth_controller.dart';
import 'auth_landing_screen.dart';
import 'home_placeholder_screen.dart';
import '../../../patients/presentation/screens/patient_profile_flow.dart';

class AuthGate extends ConsumerWidget {
  const AuthGate({super.key});

  static const routePath = '/home';
  static const routeName = 'home';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authUser = ref.watch(authUserProvider);

    return authUser.when(
      data: (user) {
        if (user == null) {
          return const AuthLandingScreen();
        }

        final userStream = ref.watch(userRepositoryProvider).watchUser(user.uid);

        return StreamBuilder(
          stream: userStream,
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const Scaffold(
                body: Center(child: CircularProgressIndicator()),
              );
            }

            final docUser = snapshot.data;
            if (docUser == null || !docUser.profileCompleted) {
              return const PatientProfileFlow();
            }

            return HomePlaceholderScreen(role: docUser.role);
          },
        );
      },
      loading: () => const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      ),
      error: (error, stack) => Scaffold(
        body: Center(
          child: Text('Error: ${error.toString()}'),
        ),
      ),
    );
  }
}
