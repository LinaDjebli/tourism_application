import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:intl/intl.dart';
import 'package:tourism_application/Componants/List_Of_States.dart';
import 'package:tourism_application/Componants/SelectChip.dart';
import 'package:tourism_application/Componants/SquaretTile.dart';
import 'package:tourism_application/Componants/textfiled.dart';
import 'package:tourism_application/LOginChoice.dart';
import 'package:tourism_application/loginpage/login.dart';
import 'package:tourism_application/loginpage/signin.dart';
import 'package:image_picker/image_picker.dart';

class GuideSignup extends StatefulWidget {
  const GuideSignup({super.key});
  @override
  State<StatefulWidget> createState() {
    ;
    // TODO: implement createState
    return _GuideSignup();
  }
}

class _GuideSignup extends State<GuideSignup> {
  List<String> selectedItems = [];
  TextEditingController datecontroller = TextEditingController();
  TextEditingController _controller = TextEditingController();
  FocusNode _Focusenode = FocusNode();
  TextEditingController Lastnamecontroller = TextEditingController();

  void _openMultiSelect() async {
    final List<String> items = ["English", "Francais", "Italian", "Arabic"];
    final List<String>? results = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return MultiSelect(
          items: items,
          Text: "choose your language ",
        );
      },
    );

    if (results != null) {
      setState(() {
        selectedItems = results;
      });
    }
  }

  List<String> SelectedItems = [];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: SingleChildScrollView(
              child: Column(children: [
        const SizedBox(height: 50),
        Row(
          children: [
            SizedBox(
              width: 30,
            ),
            Text(
              "Fill in your informations",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
                //font fam to add later
              ),
            ),
          ],
        ),
        Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          SizedBox(
            height: 150,
            width: 180,
            child: Image.asset("lib/photos/4722714.jpg"),
          ),
        ]),
        SizedBox(
          height: 25,
        ),
        Row(
          children: [
            SizedBox(
              width: 30,
            ),
            Text(
              "chose your spoken languages",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                //font fam to add later
              ),
            ),
          ],
        ),
        SizedBox(
          height: 25,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.grey,
            onPrimary: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10), // Rounded corners
            ),
            minimumSize: Size(350, 60),
          ),
          onPressed: _openMultiSelect,
          child: const Text(
            "Please select the languages you speak ",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 56, 53, 53)),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Wrap(
          children: selectedItems
              .map((item) => Chip(
                    backgroundColor: Colors.grey,
                    label: Text(item),
                    onDeleted: () {
                      setState(() {
                        selectedItems.remove(item);
                      });
                    },
                  ))
              .toList(),
        ),
        SizedBox(
          height: 25,
        ),
        Row(
          children: [
            SizedBox(
              width: 30,
            ),
            Text(
              "enter your birthdate ",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                //font fam to add later
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
            focusNode: _Focusenode,
            controller: datecontroller,
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.calendar_month,
              ),
              hintText: " MM/DD/YYYY",
              enabledBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: const Color.fromARGB(109, 255, 255, 255)),
                borderRadius:
                    BorderRadius.circular(10.0), // Set borderRadius here
              ),
              focusedBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: const Color.fromARGB(109, 255, 255, 255)),
                borderRadius:
                    BorderRadius.circular(10.0), // Set borderRadius here
              ),
              fillColor: Colors.grey,
              filled: true,
            ),
            // readOnly: true,
            onTap: () async {
              _Focusenode.requestFocus();
              DateTime? pickeddate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1900),
                  lastDate: DateTime(2025));

              if (pickeddate != null) {
                setState(() {
                  datecontroller.text =
                      DateFormat("MM/dd/yyyy").format(pickeddate);
                });
              }
            },
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Row(
          children: [
            SizedBox(
              width: 30,
            ),
            Text(
              "Where are you currently located ? ",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                //font fam to add later
              ),
            ),
          ],
        ),
        SizedBox(
          height: 25,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              TypeAheadField(
                  noItemsFoundBuilder: (context) => const SizedBox(
                        height: 50,
                        child: Center(
                          child: Text("No Item Found "),
                        ),
                      ),
                  suggestionsCallback: (value) =>
                      ListOfStates.getSuggestion(value),
                  itemBuilder: (context, String suggestion) {
                    return Padding(
                      padding: EdgeInsets.all(6),
                      child: Text(
                        suggestion,
                        overflow: TextOverflow.ellipsis,
                      ),
                    );
                  },

                  //hideKeyboard: true,
                  debounceDuration: const Duration(milliseconds: 400),
                  textFieldConfiguration: TextFieldConfiguration(
                    decoration: InputDecoration(
                      hintText: "search",
                      prefixIcon: Icon(Icons.search),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: const Color.fromARGB(109, 255, 255, 255)),
                        borderRadius: BorderRadius.circular(
                            10.0), // Set borderRadius here
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: const Color.fromARGB(109, 255, 255, 255)),
                        borderRadius: BorderRadius.circular(
                            10.0), // Set borderRadius here
                      ),
                      fillColor: Colors.grey,
                      filled: true,
                    ),
                  ),
                  onSuggestionSelected: (String suggestion) {
                    setState(() {
                      _controller.text =
                          suggestion; // Update the text field with the selected suggestion
                    });
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(109, 255, 255, 255),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            )),
                      ),
                    );
                  }),
            ],
          ),
        ),

        const SizedBox(
          height: 25,
        ),
        const SizedBox(
          height: 25,
        ),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              children: [
                Expanded(
                  child: Divider(
                    thickness: 0.5,
                    color: Colors.grey[400],
                  ),
                ),
                Text(
                  'Or continue with ',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                Expanded(
                    child: Divider(
                  thickness: 0.5,
                  color: Colors.grey[400],
                ))
              ],
            )),

        const SizedBox(
          height: 25,
        ),
        //google and apple sign in
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SquareTile(imagepath: 'lib/photos/google.png'),
            const SizedBox(width: 15),
            SquareTile(
                imagepath:
                    'lib/photos/kisspng-apple-iphone-5af7d926427d25.7954913915261924222724.png')
          ],
        ),

        //regester now
        const SizedBox(
          height: 25,
        ),

        Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              sigin(
                onTap: siginmethod(),
                btntext: "       Back       ",
              ),
              sigin(
                onTap: siginmethod(),
                btntext: "continue",
              ),
            ],
          ),
        )
      ]))),
    );
  }

  siginmethod() {}
}

class GuideSingupPageTwo extends StatefulWidget {
  const GuideSingupPageTwo({super.key});

  @override
  State<GuideSingupPageTwo> createState() => _GuideSingupPageTwoState();
}

class _GuideSingupPageTwoState extends State<GuideSingupPageTwo> {
  bool isSelected = false;
  bool ismen = false;
  bool iswoemn = false;
  File? image;
  final WhatDoYouDo = TextEditingController();
  final Namecontroller = TextEditingController();
  final LastNamecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 50),
              Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "Profile Details",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      //font fam to add later
                    ),
                  ),
                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                SizedBox(
                  height: 150,
                  width: 150,
                  child: Image.asset(
                      "lib/photos/0e6227f38b13826f71f6fce067df96f7-removebg-preview.png"),
                ),
              ]),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "Tell us a bit about yourself ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      //font fam to add later
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "choose your sex  ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      //font fam to add later
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              SizedBox(
                width: 350,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isSelected = true;
                      ismen = true;
                      iswoemn = false;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: isSelected && ismen && !iswoemn
                          ? Colors.blue // Change color when selected
                          : const Color.fromARGB(255, 102, 100, 100),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                          color: isSelected && ismen && !iswoemn
                              ? Colors.blue
                              : const Color.fromARGB(255, 135, 133,
                                  133), // Change border color when selected
                          width: 2), // Increase border width when selected
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 4,
                          offset:
                              const Offset(0, 2), // shadow direction: bottom
                        ),
                        BoxShadow(
                          color: const Color.fromARGB(255, 108, 106, 106)
                              .withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 4,
                          offset: const Offset(0, -2), // shadow direction: top
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            padding: const EdgeInsets.all(1),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Image.asset(
                              "lib/photos/casual-life-3d-profile-picture-of-man-in-green-shirt-and-orange-hat.png",
                              height: 60,
                            )),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          " i am a man  ",
                          style: const TextStyle(
                              color: Colors.white, fontSize: 16),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              SizedBox(
                width: 350,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isSelected = true;
                      iswoemn = true;
                      ismen = false;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: isSelected && iswoemn && !ismen
                          ? Colors.blue // Change color when selected
                          : const Color.fromARGB(255, 102, 100, 100),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                          color: isSelected && iswoemn && !ismen
                              ? Colors.blue
                              : const Color.fromARGB(255, 135, 133,
                                  133), // Change border color when selected
                          width: 2), // Increase border width when selected
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 4,
                          offset:
                              const Offset(0, 2), // shadow direction: bottom
                        ),
                        BoxShadow(
                          color: const Color.fromARGB(255, 108, 106, 106)
                              .withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 4,
                          offset: const Offset(0, -2), // shadow direction: top
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            padding: const EdgeInsets.all(1),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Image.asset(
                              "lib/photos/3d-casual-life-avatar-girl-with-hair.png",
                              height: 60,
                            )),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          " i am a Women ",
                          style: const TextStyle(
                              color: Colors.white, fontSize: 16),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "What do you do ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      //font fam to add later
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "Describe yourslef in less than 200 character  ",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 239, 236, 236)
                          .withOpacity(0.7),

                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      //font fam to add later
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              textfiled(
                  controller: WhatDoYouDo,
                  hintext: "describe your experince  ",
                  obscuretext: false),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "Choose a profile picture ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      //font fam to add later
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              image != null
                  ? ClipOval(
                      child: Image.file(
                        image!,
                        width: 160,
                        height: 160,
                        fit: BoxFit.cover,
                      ),
                    )
                  : SizedBox(
                      width: 200,
                      height: 200,
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white)),
                        child: Icon(
                          Icons.person,
                          color: Colors.white,
                          size: 200,
                        ),
                      ),
                    ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "Confirm your username ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      //font fam to add later
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "confirm your first and last name  ",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 239, 236, 236)
                          .withOpacity(0.7),

                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      //font fam to add later
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "First name ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      //font fam to add later
                    ),
                  ),
                ],
              ),
              textfiled(
                  controller: Namecontroller,
                  hintext: "name",
                  obscuretext: false),
              Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "Last Name  ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      //font fam to add later
                    ),
                  ),
                ],
              ),
              textfiled(
                  controller: LastNamecontroller,
                  hintext: "name",
                  obscuretext: false),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    sigin(
                      onTap: siginmethod(),
                      btntext: "       Back       ",
                    ),
                    sigin(
                      onTap: siginmethod(),
                      btntext: "    continue    ",
                    ),
                  ],
                ),
              ),
            ],
          ),
        )));
  }

  siginmethod() {}
  Future pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) {
        return null;
      }
      final Imagepath = File(image.path);
      setState(() {
        this.image = Imagepath;
        // ignore: empty_catches
      });
    } on PlatformException catch (e) {
      print("Failed to pick an image $e");
    }
  }
}
