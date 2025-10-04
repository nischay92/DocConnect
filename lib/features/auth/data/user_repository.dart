import 'package:cloud_firestore/cloud_firestore.dart';

import '../domain/docconnect_user.dart';

class UserRepository {
  UserRepository(this._firestore);

  final FirebaseFirestore _firestore;

  CollectionReference<Map<String, dynamic>> get _collection =>
      _firestore.collection('users');

  Future<void> createUser(DocConnectUser user) async {
    await _collection.doc(user.uid).set(user.toJson());
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
}
