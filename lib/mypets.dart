import 'package:flutter/material.dart';
import 'package:my_pets_care_app/models/mypet.dart';
import 'package:my_pets_care_app/mypets_list.dart';
import 'package:my_pets_care_app/new_pet.dart';

class MyPets extends StatefulWidget {
  const MyPets({super.key});

  @override
  State<MyPets> createState() {
    return _MyPetsState();
  }
}

class _MyPetsState extends State<MyPets> {
  final List<MyPet> _regesteredMyPets = [
    MyPet(
      avatar: 'avatar-smokey',
      image: 'assets/images/png/british-shorthair-1.png',
      imageType: 'png',
      kind: Kind.cat,
      name: 'Smokey',
      breed: 'Shortheir',
      dob: DateTime.now(),
      sex: Gender.she,
      weight: 13.5,
      route: '/SmokeyCatPage',
    ),
    MyPet(
      avatar: 'avatar-bruno',
      image: 'assets/images/png/gb-bulldog-1.png',
      imageType: 'png',
      kind: Kind.dog,
      name: 'Bruno',
      breed: 'Booldog',
      dob: DateTime.now(),
      sex: Gender.he,
      weight: 35.8,
      route: '/BrunoDogPage',
    ),
    MyPet(
      avatar: 'avatar-rico',
      image: 'assets/images/png/parrot-macaw.png',
      imageType: 'png',
      kind: Kind.bird,
      name: 'Rico',
      breed: 'Macaw',
      dob: DateTime.now(),
      sex: Gender.he,
      weight: 8.3,
      route: '/RicoBirdPage',
    ),
  ];

  void _openAddExpenseOverlay() {
    showModalBottomSheet(
      backgroundColor: Color.fromARGB(255, 255, 244, 225),
      isScrollControlled: true,
      context: context,
      builder: (ctx) => NewPet(onAddNewPet: _addPet),
    );
  }

  void _addPet(MyPet mypet) {
    setState(() {
      _regesteredMyPets.add(mypet);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Pets',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 197, 129, 6),
          ),
        ),
        actions: [
          IconButton(
            onPressed: _openAddExpenseOverlay,
            icon: Icon(
              Icons.add,
              size: 40,
              color: Color.fromARGB(255, 197, 129, 6),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: MyPetsList(mypets: _regesteredMyPets),
          ),
        ],
      ),
    );
  }
}
