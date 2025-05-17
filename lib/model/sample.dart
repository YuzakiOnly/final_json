// import 'package:flutter/foundation.dart';

class Sample {
  final List<Profile>? profile;

  Sample({this.profile});

  factory Sample.fromJson(Map<String, dynamic> json) {
    return Sample(
      profile: List<Profile>.from(
        (json['profile'] ?? []).map((item) => Profile.fromJson(item)),
      ),
    );
  }

  @override
  String toString() => 'Sample(profile: $profile)';
}

class Profile {
  final int id;
  final String name;
  final String position;
  final String department;
  final String email;
  final int salary;
  final String photoUrl;

  Profile({
    required this.id,
    required this.name,
    required this.position,
    required this.department,
    required this.email,
    required this.salary,
    required this.photoUrl,
  });

  factory Profile.fromJson(Map<String, dynamic> json) {
    return Profile(
      id: json['id'] ?? 0,
      name: json['name'] ?? '',
      position: json['position'] ?? '',
      department: json['department'] ?? '',
      email: json['email'] ?? '',
      salary: json['salary'] ?? 0,
      photoUrl: json['photoUrl'] ?? '',
    );
  }

  @override
  String toString() {
    return 'Profile(id: $id, name: $name, position: $position, department: $department, email: $email, salary: $salary, photoUrl: $photoUrl)';
  }
}
