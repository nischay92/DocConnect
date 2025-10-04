enum UserRole {
  patient,
  doctor,
}

extension UserRoleX on UserRole {
  String get label {
    switch (this) {
      case UserRole.patient:
        return 'Patient';
      case UserRole.doctor:
        return 'Doctor';
    }
  }

  static UserRole fromString(String value) {
    return UserRole.values.firstWhere(
      (role) => role.name == value,
      orElse: () => UserRole.patient,
    );
  }
}
