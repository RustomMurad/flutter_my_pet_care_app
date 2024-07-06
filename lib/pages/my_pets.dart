import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_pets_care_app/models/pet.dart';
import 'package:my_pets_care_app/widgets/small_card.dart';

class MyPetsPage extends StatefulWidget {
  const MyPetsPage({
    super.key,
  });

  @override
  State<MyPetsPage> createState() => _MyPetsPageState();
}

class _MyPetsPageState extends State<MyPetsPage> {
  final List<Pet> _registeredPets = [
    Pet(
      avatar: 'avatar-smokey',
      image: 'british-shorthair-1',
      image_type: 'png',
      kind: Kind.cat,
      name: 'Smokey',
      breed: 'Shortheir',
      dob: DateTime.now(),
      sex: Gender.she,
      weight: 13.5,
      route: '/SmokeyCatPage',
    ),
    Pet(
      avatar: 'avatar-bruno',
      image: 'gb-bulldog-1',
      image_type: 'png',
      kind: Kind.dog,
      name: 'Bruno',
      breed: 'Boolgog',
      dob: DateTime.now(),
      sex: Gender.she,
      weight: 13.5,
      route: '/BrunoDogPage',
    ),
    Pet(
      avatar: 'avatar-rico',
      image: 'parrot-macaw',
      image_type: 'png',
      kind: Kind.bird,
      name: 'Rico',
      breed: 'Macaw',
      dob: DateTime.now(),
      sex: Gender.he,
      weight: 13.5,
      route: '/RicoBirdPage',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: SvgPicture.asset('assets/images/BellAndNotification.svg'),
          )
        ],
      ),
      backgroundColor: Color.fromARGB(255, 255, 244, 225),
      body: CustomScrollView(
        shrinkWrap: true,
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'My Pets',
                      style: TextStyle(
                        fontSize: 45,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 197, 129, 6),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.4,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            delegate: SliverChildBuilderDelegate(
              childCount: _registeredPets.length,
              (context, index) => small_card(
                  context,
                  _registeredPets[index].avatar,
                  _registeredPets[index].image_type,
                  _registeredPets[index].name,
                  _registeredPets[index].route),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/AddUpdateMyPetPage');
        },
        tooltip: 'Add New Pet',
        child: Icon(
          Icons.add,
          size: 60,
          color: Color.fromARGB(255, 197, 129, 6),
        ),
      ),
    );
  }
}
