import 'package:ui/core/enums/group.dart';

class Contact {
  final int id;
  final String name;
  final String telephone;
  final int age;
  final String? email;
  final String? address;
  final String? instagram;
  final Group? group;
  final bool block;

  Contact(
      {required this.id,
      required this.name,
      required this.telephone,
      required this.age,
      required this.block,
      this.email,
      this.address,
      this.instagram,
      this.group});

  factory Contact.fromJson(Map<String, dynamic> json) => Contact(
        id: json["id"],
        name: json["name"],
        telephone: json["telephone"],
        age: json["age"],
        email: json["email"],
        address: json["address"],
        instagram: json["instagram"],
        block: json["block"],
        group: json["group"] is int ? Group.values[json["group"]] : null,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "telephone": telephone,
        "age": age,
        "email": email,
        "address": address,
        "instagram": instagram,
        "group": group?.index,
        "block": block,
      };
}
