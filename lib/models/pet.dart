import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

const uuid = Uuid();

enum Kind { dog, cat, bird }

enum Gender { she, he }

class Pet {
  Pet({
    required this.name,
    required this.breed,
    required this.dob,
    required this.sex,
    required this.weight,
    required this.image,
    required this.image_type,
    required this.avatar,
    required this.kind,
    required this.route,
  }) : id = uuid.v4();

  final String id;
  final String image;
  final String image_type;
  final String avatar;
  final Kind kind;
  final String name;
  final String breed;
  final DateTime dob;
  final Gender sex;
  final double weight;
  final String route;
}
