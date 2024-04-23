import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tourism_application/Componants/SquaretTile.dart';
import 'package:tourism_application/Componants/Passwordfield.dart';
import 'package:tourism_application/loginpage/signin.dart';
import 'package:tourism_application/Componants/textfiled.dart';

double radius = 10.0;

class loginPage extends StatelessWidget {
  loginPage({super.key});

  //controller for text
  final usernamecontroller = TextEditingController();

  // sigin methode
  void SgininMethod() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: SingleChildScrollView(
                child: Center(
                    child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 50),
            //logo
            Icon(
              Icons.lock,
              size: 100,
              color: Colors.white,
            ),

            const SizedBox(height: 25),

            //welcome back message
            Text(
              'Welcome back ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),

            const SizedBox(
              height: 4,
            ),
            Text(
              'Please login to your account ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 50),

            //username textfield
            textfiled(
              controller: usernamecontroller,
              hintext: 'Enter your Email or Username ',
              obscuretext: false,
            ),

            const SizedBox(height: 20),

            //password textfield

            PasswordField(),

            const SizedBox(height: 10),
            // forgot password button
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'forgot password ',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),
            // sign in button
            sigin(
              onTap: SgininMethod,
              btntext: "Log in ",
            ),
            const SizedBox(height: 25),
            //continue with
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Not a memeber ? ",
                  style: TextStyle(color: Colors.white),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Regester now ",
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    ))
              ],
            )
          ],
        )))));
  }
}
