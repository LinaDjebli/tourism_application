import 'package:flutter/material.dart';
import 'package:tourism_application/loginpage/Passwordfield.dart';
import 'package:tourism_application/loginpage/textfiled.dart';

class SignupPage extends StatelessWidget {
  final firstnamecntr = TextEditingController();
  final lastnamecntr = TextEditingController();
  final EmailInputElement = TextEditingController();

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
                height: 25,
              ),
              CheckboxExample(),
            ]),
          )),
        ));
  }
}

class CheckboxExample extends StatefulWidget {
  const CheckboxExample({super.key});

  @override
  State<CheckboxExample> createState() => _CheckboxExampleState();
}

class _CheckboxExampleState extends State<CheckboxExample> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.white;
    }

    return Checkbox(
      checkColor: Colors.white,
      fillColor: MaterialStateProperty.resolveWith(getColor),
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}
