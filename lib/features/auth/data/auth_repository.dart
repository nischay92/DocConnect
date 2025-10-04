import 'package:firebase_auth/firebase_auth.dart';

typedef AuthUser = User?;

class AuthRepository {
  AuthRepository(this._firebaseAuth);

  final FirebaseAuth _firebaseAuth;

  Stream<AuthUser> watchAuthState() => _firebaseAuth.authStateChanges();
}
