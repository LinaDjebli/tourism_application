import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:tourism_application/loginpage/login.dart';

class LoginChoice extends StatelessWidget {
  const LoginChoice({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 50),
              Text(
                "Log in As :",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                ),
              ),
              SizedBox(height: 15),
              Text(
                "Choose your Account type",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              ChoiceBtn(
                imagepath:
                    "lib/photos/travel-agent-abstract-concept-vector-illustration-2G4ME4R-removebg-preview.png",
                text: "             Log in as a Agency ",
                route: MaterialPageRoute(builder: (context) => loginPage()),
              ),
              SizedBox(
                height: 25,
              ),
              ChoiceBtn(
                imagepath:
                    "lib/photos/1dfb2f7cfb76190864e718c9ce0f759c-removebg-preview.png",
                text: "Log in as a Agency ",
                route: MaterialPageRoute(builder: (context) => loginPage()),
              ),
              SizedBox(
                height: 25,
              ),
              ChoiceBtn(
                imagepath:
                    "lib/photos/Girl-Traveling-Illustration-1-removebg-preview.png",
                text: 'Navigate to Page A',

                route: MaterialPageRoute(
                    builder: (context) =>
                        loginPage()), // Corrected route builder
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Have an account  ? ",
                    style: TextStyle(color: Colors.white),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => loginPage()),
                        );
                      },
                      child: Text(
                        "Log in  ",
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                      ))
                ],
              )
            ],
          ),
        ));
  }
}

class ChoiceBtn extends StatefulWidget {
  final String imagepath;
  final String text;

  final Route route;

  const ChoiceBtn({
    Key? key,
    required this.imagepath,
    required this.text,
    required this.route,
  }) : super(key: key);

  @override
  _ChoiceBtnState createState() => _ChoiceBtnState();
}

class _ChoiceBtnState extends State<ChoiceBtn> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: GestureDetector(
        onTap: () {
          setState(() {
            isSelected = !isSelected;
          });
          Navigator.of(context).push(widget.route);
        },
        child: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: isSelected
                ? Colors.blue // Change color when selected
                : const Color.fromARGB(255, 102, 100, 100),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
                color: isSelected
                    ? Colors.blue
                    : const Color.fromARGB(255, 135, 133,
                        133), // Change border color when selected
                width: 2), // Increase border width when selected
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 4,
                offset: const Offset(0, 2), // shadow direction: bottom
              ),
              BoxShadow(
                color:
                    const Color.fromARGB(255, 108, 106, 106).withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 4,
                offset: const Offset(0, -2), // shadow direction: top
              ),
            ],
          ),
          child: Row(
            children: [
              Container(
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Image.asset(
                    widget.imagepath,
                    height: 100,
                  )),
              const SizedBox(
                width: 5,
              ),
              Text(
                widget.text,
                style: const TextStyle(color: Colors.white, fontSize: 16),
              )
            ],
          ),
        ),
      ),
    );
  }
}
