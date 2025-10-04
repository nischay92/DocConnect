import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/utils/firestore_paths.dart';
import '../domain/models.dart';

final patientRepositoryProvider = Provider<PatientRepository>((ref) {
  final firestore = FirebaseFirestore.instance;
  return PatientRepository(firestore);
});

class PatientRepository {
  PatientRepository(this._firestore);

  final FirebaseFirestore _firestore;

  CollectionReference<Map<String, dynamic>> get _collection =>
      _firestore.collection(FirestorePaths.patients);

  Future<PatientProfile?> fetch(String uid) async {
    final doc = await _collection.doc(uid).get();
    if (!doc.exists) return null;
    return PatientProfile.fromJson(doc.data()!);
  }

  Stream<PatientProfile?> watch(String uid) {
    return _collection.doc(uid).snapshots().map((snapshot) {
      if (!snapshot.exists) return null;
      return PatientProfile.fromJson(snapshot.data()!);
    });
  }

  Future<void> upsert(PatientProfile profile) async {
    await _collection.doc(profile.uid).set(profile.toJson(), SetOptions(merge: true));
  }
}
