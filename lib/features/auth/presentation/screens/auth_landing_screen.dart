import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/user_role.dart';
import '../controllers/auth_controller.dart';
import '../widgets/auth_form.dart';

class AuthLandingScreen extends ConsumerStatefulWidget {
  const AuthLandingScreen({super.key});

  static const routePath = '/auth';
  static const routeName = 'auth';

  @override
  ConsumerState<AuthLandingScreen> createState() => _AuthLandingScreenState();
}

class _AuthLandingScreenState extends ConsumerState<AuthLandingScreen> {
  bool _isSignIn = true;

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(authControllerProvider);
    final isLoading = state.isLoading;

    return Scaffold(
      appBar: AppBar(
        title: const Text('DocConnect'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 24),
            ToggleButtons(
              borderRadius: BorderRadius.circular(12),
              isSelected: [_isSignIn, !_isSignIn],
              onPressed: isLoading
                  ? null
                  : (index) {
                      setState(() {
                        _isSignIn = index == 0;
                      });
                    },
              children: const [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text('Sign In'),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text('Create Account'),
                ),
              ],
            ),
            const SizedBox(height: 24),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: AuthForm(
                  isSignIn: _isSignIn,
                  onSubmit: (email, password, role) async {
                    if (_isSignIn) {
                      await ref
                          .read(authControllerProvider.notifier)
                          .signIn(email: email, password: password);
                    } else {
                      await ref
                          .read(authControllerProvider.notifier)
                          .signUp(
                            email: email,
                            password: password,
                            role: role ?? UserRole.patient,
                          );
                    }
                  },
                ),
              ),
            ),
            if (isLoading) const LinearProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
