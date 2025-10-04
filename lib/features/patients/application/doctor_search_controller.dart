import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../doctors/data/doctor_repository.dart';
import '../../doctors/domain/models.dart';

class DoctorSearchState {
  const DoctorSearchState({
    this.query = '',
    this.specialty,
    this.insurance,
  });

  final String query;
  final String? specialty;
  final String? insurance;

  DoctorSearchState copyWith({
    String? query,
    String? specialty,
    String? insurance,
  }) {
    return DoctorSearchState(
      query: query ?? this.query,
      specialty: specialty ?? this.specialty,
      insurance: insurance ?? this.insurance,
    );
  }
}

class DoctorSearchController extends StateNotifier<DoctorSearchState> {
  DoctorSearchController() : super(const DoctorSearchState());

  void setQuery(String value) => state = state.copyWith(query: value);

  void setSpecialty(String? value) => state = state.copyWith(specialty: value);

  void setInsurance(String? value) => state = state.copyWith(insurance: value);

  void clearFilters() => state = const DoctorSearchState();
}

final doctorSearchControllerProvider =
    StateNotifierProvider<DoctorSearchController, DoctorSearchState>((ref) {
  return DoctorSearchController();
});

final doctorSearchResultsProvider =
    StreamProvider.autoDispose<List<DoctorProfile>>((ref) {
  final repository = ref.watch(doctorRepositoryProvider);
  final search = ref.watch(doctorSearchControllerProvider);

  return repository
      .watchAll(
        specialty: search.specialty,
        insurance: search.insurance,
      )
      .map((doctors) {
    if (search.query.isEmpty) return doctors;
    final queryLower = search.query.toLowerCase();
    return doctors
        .where((doc) =>
            doc.fullName.toLowerCase().contains(queryLower) ||
            doc.specialty.toLowerCase().contains(queryLower) ||
            (doc.clinic.address.toLowerCase().contains(queryLower)))
        .toList();
  });
});
