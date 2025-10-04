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

  final List<String> _specialties = [];
  final List<String> _insurances = [];

  List<String> get availableSpecialties => List.unmodifiable(_specialties);
  List<String> get availableInsurances => List.unmodifiable(_insurances);

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

  Stream<List<DoctorProfile>> watchAll({String? specialty, String? insurance}) {
    Query<Map<String, dynamic>> query = _collection;
    if (specialty != null && specialty.isNotEmpty) {
      query = query.where('specialty', isEqualTo: specialty);
    }
    if (insurance != null && insurance.isNotEmpty) {
      query = query.where('acceptedInsurance', arrayContains: insurance);
    }
    return query.snapshots().map((snapshot) {
      final doctors = snapshot.docs
          .map((doc) => DoctorProfile.fromJson(doc.data()))
          .toList()
        ..sort((a, b) => a.fullName.compareTo(b.fullName));
      _updateAggregates(doctors);
      return doctors;
    });
  }

  void _updateAggregates(List<DoctorProfile> doctors) {
    _specialties
      ..clear()
      ..addAll(doctors.map((d) => d.specialty).toSet().toList()..sort());
    _insurances
      ..clear()
      ..addAll(doctors
          .expand((d) => d.acceptedInsurance)
          .toSet()
          .toList()
        ..sort());
  }

  Future<void> upsert(DoctorProfile profile) async {
    await _collection.doc(profile.uid).set(profile.toJson(), SetOptions(merge: true));
  }
}
