import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_pets_care_app/pages/add_update_my_pet.dart';
import 'package:my_pets_care_app/pages/my_bruno.dart';
import 'package:my_pets_care_app/pages/my_smokey.dart';
import 'package:my_pets_care_app/pages/my_pets.dart';
import 'package:my_pets_care_app/widgets/card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => MyPetsCarePage(title: 'My Pet\'s Care'),
        "/MyPetsPage": (context) => MyPetsPage(), //(title: 'My Pets'),
        "/SmokeyCatPage": (context) => SmokeyCatPage(title: 'Bonny'),
        "/BrunoDogPage" : (context) => BrunoDogPage(title: 'Bruno',),
        "/AddUpdateMyPetPage": (context) =>
            AddUpdateMyPetPage(title: 'Add/Update My Pet'),
      },
      // home: const MyPetsCarePage(title: 'My Pet\'s Care'),
    );
  }
}

class MyPetsCarePage extends StatefulWidget {
  const MyPetsCarePage({super.key, required this.title});

  final String title;

  @override
  State<MyPetsCarePage> createState() => _MyPetsCarePageState();
}

class _MyPetsCarePageState extends State<MyPetsCarePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          child: SvgPicture.asset('assets/images/menu.svg'),
        ),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: SvgPicture.asset('assets/images/BellAndNotification.svg'),
          )
        ],
      ),
      backgroundColor: Color.fromARGB(255, 255, 244, 225),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'My Pet\'s Care',
                style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 197, 129, 6),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 75,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 150,
                height: 150,
                child:
                    card(context, "my_pets", "svg", "My Pets", "/MyPetsPage"),
              ),
            ],
          ),
          SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 150,
                height: 150,
                child:
                    card(context, "appointments", "svg", "Appointments", "/"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
