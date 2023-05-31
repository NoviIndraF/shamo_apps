import 'dart:convert';
class User {
  final int id;
  final String name;
  final String username;
  final String email;
  final String profilePhotoUrl;
  final String token;

  User(
      {required this.id,
      required this.name,
      required this.username,
      required this.email,
      required this.profilePhotoUrl,
      required this.token});

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json["id"],
    name: json["name"],
    username: json["username"],
    email: json["email"],
    profilePhotoUrl: json["profilePhotoUrl"],
    token: json["token"],
  );

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'username': username,
      'profilePhotoUrl': profilePhotoUrl,
      'token': token,
    };
  }
}
