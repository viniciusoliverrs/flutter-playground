// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class UserEntity {
  UserEntity(this.id, this.name, this.email);

  final int id;
  final String name;
  final String email;

  UserEntity copyWith({
    int? id,
    String? name,
    String? email,
  }) {
    return UserEntity(
      id ?? this.id,
      name ?? this.name,
      email ?? this.email,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'email': email,
    };
  }

  factory UserEntity.fromMap(Map<String, dynamic> map) {
    return UserEntity(
      map['id'] as int,
      map['name'] as String,
      map['email'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserEntity.fromJson(String source) => UserEntity.fromMap(json.decode(source) as Map<String, dynamic>);
}
