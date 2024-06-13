import 'package:json_app/models/user_dob.dart';
import 'package:json_app/models/user_name.dart';

class User {
  final String gender;
  final String email;
  final String phone;
  final String cell;
  final String nat;
  final UserName name;
  final UserDob dob;

  User({
    required this.gender,
    required this.email,
    required this.phone,
    required this.cell,
    required this.nat,
    required this.name,
    required this.dob,
  });

  factory User.fromMap(Map<String, dynamic> json) {
    final name = UserName.fromMap(json['name']);

    final date = json['dob']['date'];
    final dob = UserDob(date: DateTime.parse(date), age: json['dob']['age']);

    return User(
      gender: json['gender'],
      email: json['email'],
      phone: json['phone'],
      cell: json['cell'],
      nat: json['nat'],
      name: name,
      dob: dob,
    );
  }

  String get fullName {
    return '${name.title} ${name.first} ${name.last}';
  }
}
