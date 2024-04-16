import 'package:flutter/material.dart';
import 'package:tourism_application/textfiled.dart';

double radius = 10.0;

class loginPage extends StatelessWidget {
  loginPage({super.key});

  //controller for text
  final usernamecontroller = TextEditingController();
  final passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Center(
                child: Column(
          children: [
            SizedBox(height: 100),
            //logo
            Icon(
              Icons.lock,
              size: 100,
              color: Colors.white,
            ),

            const SizedBox(height: 50),

            //welcome back message
            Text(
              'Welcome back , you have been missed gggggg',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 50),

            //username textfield
            textfiled(
              controller: usernamecontroller,
              hintext: 'Enter your Email or Username',
              obscuretext: false,
            ),
            const SizedBox(height: 25),
            //password textfield
            textfiled(
              controller: passwordcontroller,
              hintext: 'Enter your Password',
              obscuretext: true,
            ),
            // sign in button
            //not a memeber regiter now
          ],
        ))));
  }
}
