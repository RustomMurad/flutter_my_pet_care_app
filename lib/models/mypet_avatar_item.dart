import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_pets_care_app/models/mypet.dart';
import 'package:my_pets_care_app/mypet_screen.dart';

class MypetAvatarItem extends StatelessWidget {
  const MypetAvatarItem(this.mypet, {super.key});

  final MyPet mypet;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MyPetScreen(mypet: mypet,)));
      },
      child: Card(
        color: Color.fromARGB(255, 255, 244, 225),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          child: Column(
            children: [
              CircleAvatar(
                radius: 45,
                backgroundImage: AssetImage(mypet.image),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                mypet.name.toUpperCase(),
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 197, 129, 6),
                  fontWeight: FontWeight.bold,
                ),
              ),
              // SizedBox(
              //   height: 6,
             //),
              // Row(
              //   children: [
              //     Column(
              //       children: [
              //         SvgPicture.asset(
              //           '${kindSVG[mypet.kind]}',
              //           color: Color.fromARGB(255, 197, 129, 6),
              //           height: 50,
              //           width: 50,
              //         ),
              //         SizedBox(
              //           height: 18,
              //         ),
              //         Text(
              //           mypet.breed.toUpperCase(),
              //           style: TextStyle(
              //             color: Color.fromARGB(255, 197, 129, 6),
              //             fontWeight: FontWeight.bold,
              //           ),
              //         ),
              //       ],
              //     ),
              //     Spacer(),
              //     Column(
              //       children: [
              //         SvgPicture.asset(
              //           'assets/images/svg/dob.svg',
              //           color: Color.fromARGB(255, 197, 129, 6),
              //           height: 60,
              //           width: 60,
              //         ),
              //         SizedBox(
              //           height: 8,
              //         ),
              //         Text(
              //           mypet.formattedDate,
              //           style: TextStyle(
              //             color: Color.fromARGB(255, 197, 129, 6),
              //             fontWeight: FontWeight.bold,
              //           ),
              //         ),
              //       ],
              //     ),
              //     Spacer(),
              //     Column(
              //       children: [
              //         SvgPicture.asset(
              //           'assets/images/svg/gender.svg',
              //           color: Color.fromARGB(255, 197, 129, 6),
              //           height: 60,
              //           width: 60,
              //         ),
              //         SizedBox(
              //           height: 8,
              //         ),
              //         Text(
              //           mypet.sex.name.toUpperCase(),
              //           style: TextStyle(
              //             color: Color.fromARGB(255, 197, 129, 6),
              //             fontWeight: FontWeight.bold,
              //           ),
              //         ),
              //       ],
              //     ),
              //     Spacer(),
              //     Column(
              //       children: [
              //         SvgPicture.asset(
              //           'assets/images/svg/scales.svg',
              //           color: Color.fromARGB(255, 197, 129, 6),
              //           height: 60,
              //           width: 60,
              //         ),
              //         SizedBox(
              //           height: 8,
              //         ),
              //         Text(
              //           mypet.weight.toStringAsFixed(1),
              //           style: TextStyle(
              //             color: Color.fromARGB(255, 197, 129, 6),
              //             fontWeight: FontWeight.bold,
              //           ),
              //         ),
              //       ],
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
