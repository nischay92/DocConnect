import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/presentation/controllers/auth_controller.dart';
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
    ],
    redirect: (context, state) {
      // TODO: implement authentication state based redirects
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
