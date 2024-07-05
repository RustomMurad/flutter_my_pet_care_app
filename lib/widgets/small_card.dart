import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget small_card(context, String image, String imageType, String text, String route) {
  return GestureDetector(
    onTap: () {
      Navigator.pushNamed(context,route);
    },
    child: Container(
      margin: EdgeInsets.all(15),
      // width: 100,
      // height: 100,
      decoration: BoxDecoration(
        // color: Colors.white,
        // borderRadius: BorderRadius.all(
        //   Radius.circular(20),
        // ),
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.grey.withOpacity(0.5),
        //     blurRadius: 20.0,
        //     spreadRadius: 0.0,
        //     offset: Offset(
        //       3,
        //       3,
        //     ),
        //   ),
        // ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          imageType == 'svg'
              ? SvgPicture.asset(
                  'assets/images/$image.svg',
                  color: Color.fromARGB(255, 197, 129, 6),
                  height: 60,
                  width: 60,
                )
              : Image.asset('assets/images/$image.png'),
          SizedBox(height: 5),
          Text(
            text,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 197, 129, 6),
            ),
          )
        ],
      ),
    ),
  );
}
