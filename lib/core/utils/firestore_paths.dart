class FirestorePaths {
  const FirestorePaths._();

  static const users = 'users';
  static const patients = 'patients';
  static const doctors = 'doctors';
  static const appointments = 'appointments';
  static const reviews = 'reviews';
  static const chats = 'chats';

  static String userDoc(String uid) => '$users/$uid';
  static String patientDoc(String uid) => '$patients/$uid';
  static String doctorDoc(String uid) => '$doctors/$uid';
}
