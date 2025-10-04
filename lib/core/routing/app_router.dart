import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/presentation/controllers/auth_controller.dart';
import '../../features/auth/presentation/screens/auth_gate.dart';
import '../../features/auth/presentation/screens/auth_landing_screen.dart';
import '../../features/auth/presentation/screens/profile_setup_placeholder_screen.dart';
import '../../features/auth/presentation/screens/splash_screen.dart';

final appRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: SplashScreen.routePath,
    routes: [
      GoRoute(
        path: SplashScreen.routePath,
        name: SplashScreen.routeName,
        pageBuilder: (context, state) => const NoTransitionPage(
          child: SplashScreen(),
        ),
      ),
      GoRoute(
        path: AuthLandingScreen.routePath,
        name: AuthLandingScreen.routeName,
        pageBuilder: (context, state) => const NoTransitionPage(
          child: AuthLandingScreen(),
        ),
      ),
      GoRoute(
        path: AuthGate.routePath,
        name: AuthGate.routeName,
        pageBuilder: (context, state) => const NoTransitionPage(
          child: AuthGate(),
        ),
      ),
      GoRoute(
        path: ProfileSetupPlaceholderScreen.routePath,
        name: ProfileSetupPlaceholderScreen.routeName,
        pageBuilder: (context, state) => const NoTransitionPage(
          child: ProfileSetupPlaceholderScreen(),
        ),
      ),
    ],
    redirect: (context, state) {
      final authState = ref.read(authUserProvider);

      if (authState.isLoading || authState.hasError) {
        return null;
      }

      final user = authState.value;

      if (user == null) {
        if (state.matchedLocation != AuthLandingScreen.routePath) {
          return AuthLandingScreen.routePath;
        }
        return null;
      }

      if (state.matchedLocation == SplashScreen.routePath ||
          state.matchedLocation == AuthLandingScreen.routePath) {
        return AuthGate.routePath;
      }

      return null;
    },
    refreshListenable: GoRouterRefreshNotifier(ref),
  );
});

class GoRouterRefreshNotifier extends ChangeNotifier {
  GoRouterRefreshNotifier(this.ref) {
    ref.listen(authUserProvider, (_, __) => notifyListeners());
  }

  final Ref ref;
}
