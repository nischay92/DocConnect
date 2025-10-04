import 'package:cloud_firestore/cloud_firestore.dart';

import 'user_role.dart';

class DocConnectUser {
  DocConnectUser({
    required this.uid,
    required this.email,
    required this.role,
    required this.createdAt,
    this.profileCompleted = false,
  });

  final String uid;
  final String email;
  final UserRole role;
  final DateTime createdAt;
  final bool profileCompleted;

  Map<String, dynamic> toJson() {
    return {
      'uid': uid,
      'email': email,
      'role': role.name,
      'createdAt': Timestamp.fromDate(createdAt),
      'profileCompleted': profileCompleted,
    };
  }

  static DocConnectUser fromJson(Map<String, dynamic> json) {
    return DocConnectUser(
      uid: json['uid'] as String,
      email: json['email'] as String,
      role: UserRoleX.fromString(json['role'] as String),
      createdAt: (json['createdAt'] as Timestamp).toDate(),
      profileCompleted: (json['profileCompleted'] as bool?) ?? false,
    );
  }
}
