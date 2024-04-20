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
              choicebtn(
                  imagepath:
                      "lib/photos/travel-agent-abstract-concept-vector-illustration-2G4ME4R-removebg-preview.png",
                  text: "             Log in as a Agency "),
              SizedBox(
                height: 25,
              ),
              choicebtn(
                  imagepath:
                      "lib/photos/1dfb2f7cfb76190864e718c9ce0f759c-removebg-preview.png",
                  text: "Log in as a Agency "),
              SizedBox(
                height: 25,
              ),
              choicebtn(
                  imagepath:
                      "lib/photos/Girl-Traveling-Illustration-1-removebg-preview.png",
                  text: "   Log in as a Agency "),
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

class choicebtn extends StatelessWidget {
  final String imagepath;
  final String text;
  const choicebtn({super.key, required this.imagepath, required this.text});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 102, 100, 100),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: const Color.fromARGB(255, 135, 133, 133)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 4,
              offset: Offset(0, 2), // shadow direction: bottom
            ),
            BoxShadow(
              color: Color.fromARGB(255, 108, 106, 106).withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 4,
              offset: Offset(0, -2), // shadow direction: top
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Image.asset(
                  imagepath,
                  height: 100,
                )),
            SizedBox(
              width: 5,
            ),
            Text(
              text,
              style: TextStyle(color: Colors.white, fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}
