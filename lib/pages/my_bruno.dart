import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_pets_care_app/widgets/card.dart';
import 'package:my_pets_care_app/widgets/small_card.dart';

class BrunoDogPage extends StatefulWidget {
  const BrunoDogPage({super.key, required this.title});

  final String title;

  @override
  State<BrunoDogPage> createState() => _BrunoDogPageState();
}

class _BrunoDogPageState extends State<BrunoDogPage> {
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
                      'My Bruno',
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
                    card(
                        context, "gb-bulldog-1", "png", "06/26/23", "/"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    small_card(context, "my_pets", "svg", "Bruno", "/"),
                    small_card(context, "dob", "svg", "06/10/21", "/"),
                    small_card(context, "gender", "svg", "Male", "/"),
                    small_card(context, "scales", "svg", "35.8lb", "/"),
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
