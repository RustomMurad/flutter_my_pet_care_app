import 'package:uuid/uuid.dart';

const uuid = Uuid();

enum Gender { she, he }

class Pet {
  Pet({
    required this.name,
    required this.breed,
    required this.dob,
    required this.sex,
    required this.weight,
  }) : id = uuid.v4();

  final String id;
  final String name;
  final String breed;
  final DateTime dob;
  final Gender sex;
  final double weight;
}
