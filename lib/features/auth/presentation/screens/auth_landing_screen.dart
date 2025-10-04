import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/ui/theme/app_colors.dart';
import '../../../../core/ui/theme/app_icons.dart';
import '../../../../core/ui/widgets/app_loader.dart';
import '../controllers/auth_controller.dart';
import '../widgets/auth_form.dart';
import '../../domain/user_role.dart';
import 'auth_gate.dart';

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
      backgroundColor: AppColors.neutralBackground,
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 48,
                        width: 48,
                        decoration: const BoxDecoration(
                          color: AppColors.primaryTeal,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(AppIcons.clinic, color: Colors.white),
                      ),
                      const SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'DocConnect',
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium
                                ?.copyWith(color: AppColors.primaryBlue),
                          ),
                          Text(
                            'A seamless experience for patients and doctors',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(color: AppColors.neutralTextSecondary),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),
                  Container(
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      color: AppColors.neutralSurface,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0, 12),
                          blurRadius: 24,
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                          decoration: BoxDecoration(
                            color: AppColors.primaryTeal.withAlpha(28),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                _isSignIn ? AppIcons.login : AppIcons.profile,
                                color: AppColors.primaryTeal,
                                size: 18,
                              ),
                              const SizedBox(width: 8),
                              Text(
                                _isSignIn ? 'Welcome back' : 'Let’s get started',
                                style: Theme.of(context)
                                    .textTheme
                                    .labelMedium
                                    ?.copyWith(color: AppColors.primaryTeal),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          _isSignIn
                              ? 'Sign in to manage appointments, connect with your care team, and more.'
                              : 'Create an account to find trusted specialists, book visits, and manage your health journey.',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(color: AppColors.neutralTextSecondary),
                        ),
                        const SizedBox(height: 24),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: AppColors.neutralBackground,
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: _AuthToggleButton(
                                  title: 'Sign In',
                                  icon: AppIcons.login,
                                  selected: _isSignIn,
                                  onTap: isLoading
                                      ? null
                                      : () => setState(() => _isSignIn = true),
                                ),
                              ),
                              Expanded(
                                child: _AuthToggleButton(
                                  title: 'Create Account',
                                  icon: AppIcons.profile,
                                  selected: !_isSignIn,
                                  onTap: isLoading
                                      ? null
                                      : () => setState(() => _isSignIn = false),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 24),
                        AuthForm(
                          isSignIn: _isSignIn,
                          onEmailChanged: (value) => ref.read(_authEmailProvider.notifier).state = value,
                          onSubmit: (email, password, role) async {
                            try {
                              final controller = ref.read(authControllerProvider.notifier);
                              final router = GoRouter.of(context);
                              if (_isSignIn) {
                                await controller.signIn(email: email, password: password);
                                ref.read(_authEmailProvider.notifier).state = email;
                              } else {
                                await controller.signUp(
                                  email: email,
                                  password: password,
                                  role: role ?? UserRole.patient,
                                );
                                ref.read(_authEmailProvider.notifier).state = email;
                              }

                              router.go(AuthGate.routePath);
                            } catch (e) {
                              if (!context.mounted) return;
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text('Authentication failed: $e')),
                              );
                            }
                          },
                        ),
                        const SizedBox(height: 16),
                        if (_isSignIn)
                          TextButton.icon(
                            onPressed: isLoading
                                ? null
                                : () async {
                                    final email = ref.read(_authEmailProvider);
                                    if (email == null || email.isEmpty) {
                                      if (!context.mounted) return;
                                      ScaffoldMessenger.of(context).showSnackBar(
                                        const SnackBar(
                                          content: Text('Enter your email above to reset your password.'),
                                        ),
                                      );
                                      return;
                                    }
                                    await ref
                                        .read(authControllerProvider.notifier)
                                        .sendPasswordReset(email: email);
                                    if (!context.mounted) return;
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content: Text('Password reset email sent'),
                                      ),
                                    );
                                  },
                            icon: const Icon(AppIcons.password, size: 18),
                            label: const Text('Forgot password?'),
                          ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  Row(
                    children: [
                      Icon(AppIcons.success, color: AppColors.primaryTeal, size: 18),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          'DocConnect keeps your health information secure and compliant.',
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.copyWith(color: AppColors.neutralTextSecondary),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            if (isLoading) const AppLoader(message: 'Authenticating...'),
          ],
        ),
      ),
    );
  }
}

class _AuthToggleButton extends StatelessWidget {
  const _AuthToggleButton({
    required this.title,
    required this.icon,
    required this.selected,
    this.onTap,
  });

  final String title;
  final IconData icon;
  final bool selected;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      decoration: BoxDecoration(
        color: selected ? AppColors.primaryBlue : AppColors.neutralBackground,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  color: selected ? Colors.white : AppColors.primaryBlue,
                  size: 20,
                ),
                const SizedBox(width: 8),
                Text(
                  title,
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        color: selected ? Colors.white : AppColors.primaryBlue,
                      ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

final _authEmailProvider = StateProvider<String?>((ref) => null);
