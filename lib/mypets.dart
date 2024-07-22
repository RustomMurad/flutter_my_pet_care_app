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

  void _removePet(MyPet mypet) {
    final petIndex = _regesteredMyPets.indexOf(mypet);
    setState(() {
      _regesteredMyPets.remove(mypet);
    });
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: Duration(seconds: 3),
        content: Text('Pet deleted.'),
        action: SnackBarAction(
          label: 'Undo',
          onPressed: () {
            setState(() {
              _regesteredMyPets.insert(petIndex, mypet);
            });
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget mainContent = Center(
      child: Text('No pets founf. Start adding some!'),
    );

    if (_regesteredMyPets.isNotEmpty) {
      mainContent = MyPetsList(
        mypets: _regesteredMyPets,
        onRemoveExpense: _removePet,
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Pets',
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 197, 129, 6),
          ),
        ),
        actions: [
          IconButton(
            onPressed: _openAddExpenseOverlay,
            icon: Icon(
              Icons.add,
              size: 45,
              color: Color.fromARGB(255, 197, 129, 6),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: mainContent,
          ),
        ],
      ),
    );
  }
}
