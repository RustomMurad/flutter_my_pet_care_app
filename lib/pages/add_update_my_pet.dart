import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_pets_care_app/widgets/card.dart';

class AddUpdateMyPetPage extends StatefulWidget {
  const AddUpdateMyPetPage({super.key, required this.title});

  final String title;

  @override
  State<AddUpdateMyPetPage> createState() => _AddUpdateMyPetPageState();
}

class _AddUpdateMyPetPageState extends State<AddUpdateMyPetPage> {
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
                      'My New Pet!',
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
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Form(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(
                              left: 10.0,
                              top: 10.0,
                              bottom: 10.0,
                            ),
                            labelText: "Name",
                            labelStyle: TextStyle(
                              color: Color.fromARGB(255, 197, 129, 6),
                              fontWeight: FontWeight.bold,
                            ),
                            hintText: "what should I call you",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            //icon: Icon(Icons.person),
                          ),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(
                              left: 10.0,
                              top: 10.0,
                              bottom: 10.0,
                            ),
                            labelText: "Breed",
                            labelStyle: TextStyle(
                              color: Color.fromARGB(255, 197, 129, 6),
                              fontWeight: FontWeight.bold,
                            ),
                            hintText: "what do people call you",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(
                              left: 10.0,
                              top: 10.0,
                              bottom: 10.0,
                            ),
                            labelText: "Birthday",
                            labelStyle: TextStyle(
                              color: Color.fromARGB(255, 197, 129, 6),
                              fontWeight: FontWeight.bold,
                            ),
                            hintText: "what do people call you",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            //icon: Icon(Icons.person),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(
                              left: 10.0,
                              top: 10.0,
                              bottom: 10.0,
                            ),
                            labelText: "Gender",
                            labelStyle: TextStyle(
                              color: Color.fromARGB(255, 197, 129, 6),
                              fontWeight: FontWeight.bold,
                            ),
                            hintText: "what do people call you",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            //icon: Icon(Icons.person),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(
                              left: 10.0,
                              top: 10.0,
                              bottom: 10.0,
                            ),
                            labelText: "Weight",
                            labelStyle: TextStyle(
                              color: Color.fromARGB(255, 197, 129, 6),
                              fontWeight: FontWeight.bold,
                            ),
                            hintText: "how much do you weight?",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(200, 50),
                            backgroundColor:  Color.fromARGB(255, 197, 129, 6),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, "/MyPetPage");
                          },
                          child: Text(
                            "Welcome!",
                            style: TextStyle(
                              //color: Color.fromARGB(255, 197, 129, 6),
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
