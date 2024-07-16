import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_pets_care_app/models/mypet.dart';

class MypetAvatarItem extends StatelessWidget {
  const MypetAvatarItem(this.mypet, {super.key});

  final MyPet mypet;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromARGB(255, 255, 244, 225),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 40,
        ),
        child: Column(
          children: [
            CircleAvatar(
              radius: 55,
              backgroundImage: AssetImage(mypet.image),
            ),
            // Container(
            //   width: 100,
            //   height: 100,
            //   decoration: BoxDecoration(
            //     shape: BoxShape.circle,
            //     // image: DecorationImage(
            //     //   image: AssetImage(mypet.image),
            //     // ),
            //   ),
            //   child: Image.asset(
            //     mypet.image,
            //     fit: BoxFit.cover,
            //   ),
            // ),
            SizedBox(
              height: 8,
            ),
            Text(
              mypet.name.toUpperCase(),
              style: TextStyle(
                fontSize: 18,
                color: Color.fromARGB(255, 197, 129, 6),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 8,
            ),
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
    );
  }
}
