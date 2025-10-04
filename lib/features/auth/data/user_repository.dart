import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../core/utils/firestore_paths.dart';
import '../domain/docconnect_user.dart';

class UserRepository {
  UserRepository(this._firestore);

  final FirebaseFirestore _firestore;

  CollectionReference<Map<String, dynamic>> get _collection =>
      _firestore.collection(FirestorePaths.users);

  Future<void> createUser(DocConnectUser user) async {
    await _collection.doc(user.uid).set(user.toJson(), SetOptions(merge: true));
  }

  Future<DocConnectUser?> fetchUser(String uid) async {
    final doc = await _collection.doc(uid).get();
    if (!doc.exists) {
      return null;
    }
    return DocConnectUser.fromJson(doc.data()!);
  }

  Stream<DocConnectUser?> watchUser(String uid) {
    return _collection.doc(uid).snapshots().map((snapshot) {
      if (!snapshot.exists) {
        return null;
      }
      return DocConnectUser.fromJson(snapshot.data()!);
    });
  }

  Future<void> setProfileCompleted(String uid, {required bool value}) async {
    await _collection.doc(uid).set(
      {
        'profileCompleted': value,
        'updatedAt': FieldValue.serverTimestamp(),
      },
      SetOptions(merge: true),
    );
  }
}
