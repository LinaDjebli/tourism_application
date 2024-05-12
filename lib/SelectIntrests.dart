import 'package:flutter/material.dart';
import 'package:tourism_application/Componants/Selectitem.dart';
import 'package:tourism_application/constrants/Size.dart';
import 'package:tourism_application/loginpage/signin.dart';

// i wanna make it look more like tiktok
class SelectIntrests extends StatefulWidget {
  SelectIntrests({super.key});

  @override
  State<SelectIntrests> createState() => _SelectIntrestsState();
}

class _SelectIntrestsState extends State<SelectIntrests> {
  bool isSelected = false;
  bool isNotSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            gapH64,
            //here we add the username in pllace of user
            Text(
              "Welcome User",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),

            gapH32,
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                "please Select your intrests to get better  recommendations ",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            gapH32,
            Wrap(
              spacing: 16, // Horizontal spacing between items
              runSpacing: 16,
              children: [
                SelectItem(
                    imagpath:
                        "lib/photos/3d-casual-life-avatar-girl-with-hair.png",
                    Text: "blabla "),
                SelectItem(
                    imagpath:
                        "lib/photos/3d-casual-life-avatar-girl-with-hair.png",
                    Text: "blabla "),
                SelectItem(
                    imagpath:
                        "lib/photos/3d-casual-life-avatar-girl-with-hair.png",
                    Text: "blabla3 "),
                SelectItem(
                    imagpath:
                        "lib/photos/3d-casual-life-avatar-girl-with-hair.png",
                    Text: "blabla "),
                SelectItem(
                    imagpath:
                        "lib/photos/3d-casual-life-avatar-girl-with-hair.png",
                    Text: "blabla "),
                SelectItem(
                    imagpath:
                        "lib/photos/3d-casual-life-avatar-girl-with-hair.png",
                    Text: "blabla3 "),
                SelectItem(
                    imagpath:
                        "lib/photos/3d-casual-life-avatar-girl-with-hair.png",
                    Text: "blabla3 "),
              ],
            ),

            gapH64,
            Row(
              children: [
                Container(
                  alignment: Alignment.centerRight,
                  padding: const EdgeInsets.all(25),
                  child: SizedBox(
                      width: 150,
                      child: sigin(onTap: continueMethod, btntext: "Continue")),
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  // padding: const EdgeInsets.all(30),
                  child: SizedBox(
                      width: 150,
                      child: sigin(onTap: SkipeMethod, btntext: "Skip")),
                ),
              ],
            )
          ],
        ),
      )),
    );
  }

  continueMethod() {}

  SkipeMethod() {}
}
