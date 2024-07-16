import 'package:flutter/material.dart';
import 'package:my_pets_care_app/models/mypet.dart';
import 'package:my_pets_care_app/models/mypet_avatar_item.dart';
import 'package:my_pets_care_app/mypet_item.dart';

class MyPetsList extends StatelessWidget {
  const MyPetsList({
    super.key,
    required this.mypets,
  });

  final List<MyPet> mypets;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: mypets.length,
      itemBuilder: (ctx, index) => Dismissible(
        key: ValueKey(mypets[index]),
        child: MypetAvatarItem(
          mypets[index],
        ),
      ),
    );
  }
}
