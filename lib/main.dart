import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/config/firebase_initializer.dart';
import 'core/routing/app_router.dart';
import 'core/theme/app_theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeFirebase();

  runApp(const ProviderScope(child: DocConnectApp()));
}

class DocConnectApp extends ConsumerWidget {
  const DocConnectApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(appRouterProvider);

    return MaterialApp.router(
      title: 'DocConnect',
      theme: AppTheme.light,
      routerConfig: router,
    );
  }
}
