import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/utils/firestore_paths.dart';
import '../domain/models.dart';

final doctorRepositoryProvider = Provider<DoctorRepository>((ref) {
  final firestore = FirebaseFirestore.instance;
  return DoctorRepository(firestore);
});

class DoctorRepository {
  DoctorRepository(this._firestore);

  final FirebaseFirestore _firestore;

  CollectionReference<Map<String, dynamic>> get _collection =>
      _firestore.collection(FirestorePaths.doctors);

  Future<DoctorProfile?> fetch(String uid) async {
    final doc = await _collection.doc(uid).get();
    if (!doc.exists) return null;
    return DoctorProfile.fromJson(doc.data()!);
  }

  Stream<DoctorProfile?> watch(String uid) {
    return _collection.doc(uid).snapshots().map((snapshot) {
      if (!snapshot.exists) return null;
      return DoctorProfile.fromJson(snapshot.data()!);
    });
  }

  Future<void> upsert(DoctorProfile profile) async {
    await _collection.doc(profile.uid).set(profile.toJson(), SetOptions(merge: true));
  }
}
