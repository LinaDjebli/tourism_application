import 'package:flutter/material.dart';
import 'package:tourism_application/Componants/CheckBox.dart';
import 'package:tourism_application/Componants/SquaretTile.dart';
import 'package:tourism_application/Componants/Passwordfield.dart';
import 'package:tourism_application/loginpage/login.dart';
import 'package:tourism_application/loginpage/signin.dart';
import 'package:tourism_application/Componants/textfiled.dart';
import 'package:url_launcher/url_launcher.dart';

class SignupPage extends StatelessWidget {
  final firstnamecntr = TextEditingController();
  final lastnamecntr = TextEditingController();
  final EmailInputElement = TextEditingController();
  final Uri Privacypol =
      Uri.parse("https://pub.dev/packages/url_launcher/install");

  Future<void> LauncheUri() async {
    try {
      await launchUrl(Privacypol);
    } catch (err) {}
  }

  SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: SingleChildScrollView(
              child: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              const SizedBox(height: 50),
              Text("Hello!",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    //font fam to add later
                  )),
              SizedBox(
                height: 4,
              ),
              Text(
                'Welcome back ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              Text(
                'Create your account ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Align(
                    alignment: Alignment
                        .centerLeft, // Align the widget to the start (left)
                    child: SizedBox(
                      width: 195,
                      child: textfiled(
                        controller: firstnamecntr,
                        hintext: '     First Name',
                        obscuretext: false,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment
                        .centerLeft, // Align the widget to the start (left)
                    child: SizedBox(
                      width: 195,
                      child: textfiled(
                        controller: lastnamecntr,
                        hintext: '    Last Name ',
                        obscuretext: false,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              textfiled(
                controller: EmailInputElement,
                hintext: ' Enter Email ',
                obscuretext: false,
              ),
              SizedBox(
                height: 15,
              ),
              PasswordField(),
              SizedBox(
                height: 15,
              ),
              PasswordField(
                hintText: "confirm your password ",
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 12,
                  ),
                  CheckboxExample(),
                  Text(
                    "I agree with ",
                    style: TextStyle(color: Colors.red, fontSize: 16),
                  ),
                  InkWell(
                      child: Text(
                        "Privacy Policy",
                        style: TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                            fontSize: 16),
                      ),
                      onTap: () {
                        LauncheUri();
                      })
                ],
              ),

              const SizedBox(height: 20),
              // sign in button

              // sign in button
              sigin(
                onTap: SgininMethod,
                btntext: "Sign in ",
              ),
              const SizedBox(height: 25),
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

              const SizedBox(
                height: 25,
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
            ]),
          )),
        ));
  }

  SgininMethod() {}
}
