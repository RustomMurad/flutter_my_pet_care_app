import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_pets_care_app/widgets/card.dart';
import 'package:my_pets_care_app/widgets/small_card.dart';

class RicoBirdPage extends StatefulWidget {
  const RicoBirdPage({super.key, required this.title});

  final String title;

  @override
  State<RicoBirdPage> createState() => _RicoBirdPageState();
}

class _RicoBirdPageState extends State<RicoBirdPage> {
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
                        context, "parrot-macaw", "png", "09/01/15", "/"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    small_card(context, "bird", "svg", "Macaw", "/"),
                    small_card(context, "dob", "svg", "06/10/11", "/"),
                    small_card(context, "gender", "svg", "Male", "/"),
                    small_card(context, "scales", "svg", "4.5", "/"),
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
