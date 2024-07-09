import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

final formatter = DateFormat.yMd();

const uuid = Uuid();

enum Kind { dog, cat, bird }

const kindSVG = {
  Kind.dog: 'assets/images/svg/dog.svg',
  Kind.cat: 'assets/images/svg/cat.svg',
  Kind.bird: 'assets/images/svg/bird.svg',
};

enum Gender { she, he }

class MyPet {
  MyPet({
    required this.name,
    required this.breed,
    required this.dob,
    required this.sex,
    required this.weight,
    required this.image,
    required this.imageType,
    required this.avatar,
    required this.kind,
    required this.route,
  }) : id = uuid.v4();

  final String id;
  final String image;
  final String imageType;
  final String avatar;
  final Kind kind;
  final String name;
  final String breed;
  final DateTime dob;
  final Gender sex;
  final double weight;
  final String route;

  String get formattedDate {
    return formatter.format(dob);
  }
}
