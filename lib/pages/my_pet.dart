import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_pets_care_app/widgets/card.dart';
import 'package:my_pets_care_app/widgets/small_card.dart';

class MyPetPage extends StatefulWidget {
  const MyPetPage({super.key, required this.title});

  final String title;

  @override
  State<MyPetPage> createState() => _MyPetPageState();
}

class _MyPetPageState extends State<MyPetPage> {
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
                      'My Bunny',
                      style: TextStyle(
                        fontSize: 45,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 197, 129, 6),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    card(context, "bunny_pic1", "png", "06/26/24", "/"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    small_card(context, "my_pets", "svg", "Snowball", "/"),
                    small_card(context, "dob", "svg", "03/03/20", "/"),
                    small_card(context, "gender", "svg", "Female", "/"),
                    small_card(context, "scales", "svg", "12.3lb", "/"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Upcoming Appoinment(s)',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 197, 129, 6),
                        )),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
