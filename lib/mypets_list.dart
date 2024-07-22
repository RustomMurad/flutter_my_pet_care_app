import 'package:flutter/material.dart';
import 'package:my_pets_care_app/models/mypet.dart';
import 'package:my_pets_care_app/models/mypet_avatar_item.dart';
import 'package:my_pets_care_app/mypet_item.dart';

class MyPetsList extends StatelessWidget {
  const MyPetsList({
    super.key,
    required this.mypets,
    required this.onRemoveExpense,
  });

  final List<MyPet> mypets;
  final void Function(MyPet mypet) onRemoveExpense;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: mypets.length,
      itemBuilder: (ctx, index) => Dismissible(
        key: ValueKey(mypets[index]),
        onDismissed: (direction) {
          onRemoveExpense(mypets[index]);
        },
        child: MypetAvatarItem(
          mypets[index],
        ),
      ),
    );
  }
}
