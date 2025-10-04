import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/auth_repository.dart';
import '../../data/user_repository.dart';
import '../../domain/docconnect_user.dart';
import '../../domain/user_role.dart';
final firebaseAuthProvider = Provider<FirebaseAuth>((_) => FirebaseAuth.instance);
final firebaseFirestoreProvider =
    Provider<FirebaseFirestore>((_) => FirebaseFirestore.instance);

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  final firebaseAuth = ref.watch(firebaseAuthProvider);
  return AuthRepository(firebaseAuth);
});

final userRepositoryProvider = Provider<UserRepository>((ref) {
  final firestore = ref.watch(firebaseFirestoreProvider);
  return UserRepository(firestore);
});

final authUserProvider = StreamProvider<AuthUser>((ref) {
  final repository = ref.watch(authRepositoryProvider);
  return repository.watchAuthState();
});

final authControllerProvider = StateNotifierProvider<AuthController, AsyncValue<void>>((ref) {
  final authRepository = ref.watch(authRepositoryProvider);
  final userRepository = ref.watch(userRepositoryProvider);
  return AuthController(
    authRepository: authRepository,
    userRepository: userRepository,
  );
});

class AuthController extends StateNotifier<AsyncValue<void>> {
  AuthController({
    required AuthRepository authRepository,
    required UserRepository userRepository,
  })  : _authRepository = authRepository,
        _userRepository = userRepository,
        super(const AsyncData(null));

  final AuthRepository _authRepository;
  final UserRepository _userRepository;

  Future<void> signIn({
    required String email,
    required String password,
  }) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      await _authRepository.signIn(email: email, password: password);
    });
  }

  Future<void> signUp({
    required String email,
    required String password,
    required UserRole role,
  }) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final userCredential = await _authRepository.signUp(
        email: email,
        password: password,
      );

      final firebaseUser = userCredential.user;
      if (firebaseUser == null) {
        throw FirebaseAuthException(
          code: 'user-not-found',
          message: 'User could not be created.',
        );
      }

      final docConnectUser = DocConnectUser(
        uid: firebaseUser.uid,
        email: firebaseUser.email ?? email,
        role: role,
        createdAt: DateTime.now(),
      );

      await _userRepository.createUser(docConnectUser);
    });
  }

  Future<void> sendPasswordReset({required String email}) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(
      () => _authRepository.sendPasswordReset(email: email),
    );
  }

  Future<void> signOut() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(_authRepository.signOut);
  }
}
