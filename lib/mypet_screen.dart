import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_pets_care_app/models/mypet.dart';

class MyPetScreen extends StatelessWidget {
  const MyPetScreen({super.key, required this.mypet});

  final MyPet mypet;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My "+ mypet.name,
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 197, 129, 6),
          ),
        ),
        actions: [
          IconButton(
            onPressed: (){} ,//_openAddExpenseOverlay,
            icon: Icon(
              Icons.edit,
              size: 30,
              color: Color.fromARGB(255, 197, 129, 6),
            ),
          ),
        ],
      ),
      backgroundColor: Color.fromARGB(255, 255, 244, 225),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 350,
                  height: 350,
                  child: Image.asset(mypet.image, fit: BoxFit.cover,),
                ),
              ],
            ),
                        SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Column(
                  children: [
                    SvgPicture.asset(
                      '${kindSVG[mypet.kind]}',
                      color: Color.fromARGB(255, 197, 129, 6),
                      height: 50,
                      width: 50,
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Text(
                      mypet.breed.toUpperCase(),
                      style: TextStyle(
                        color: Color.fromARGB(255, 197, 129, 6),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                    SvgPicture.asset(
                      'assets/images/svg/dob.svg',
                      color: Color.fromARGB(255, 197, 129, 6),
                      height: 60,
                      width: 60,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      mypet.formattedDate,
                      style: TextStyle(
                        color: Color.fromARGB(255, 197, 129, 6),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                    SvgPicture.asset(
                      'assets/images/svg/gender.svg',
                      color: Color.fromARGB(255, 197, 129, 6),
                      height: 60,
                      width: 60,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      mypet.sex.name.toUpperCase(),
                      style: TextStyle(
                        color: Color.fromARGB(255, 197, 129, 6),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                    SvgPicture.asset(
                      'assets/images/svg/scales.svg',
                      color: Color.fromARGB(255, 197, 129, 6),
                      height: 60,
                      width: 60,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      mypet.weight.toStringAsFixed(1) +' lb',
                      style: TextStyle(
                        color: Color.fromARGB(255, 197, 129, 6),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
