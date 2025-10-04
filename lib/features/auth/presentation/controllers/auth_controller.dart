import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/auth_repository.dart';

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  return AuthRepository(FirebaseAuth.instance);
});

final authUserProvider = StreamProvider<AuthUser>((ref) {
  final repository = ref.watch(authRepositoryProvider);
  return repository.watchAuthState();
});
