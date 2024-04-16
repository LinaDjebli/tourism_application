import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _PasswordField();
}

class _PasswordField extends State<PasswordField> {
  bool visibaleicon = false;
  Icon passwordIcon = Icon(Icons.visibility_off);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        obscureText: visibaleicon ? true : false,
        decoration: InputDecoration(
            prefixIcon: Icon(Icons.lock),
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  visibaleicon = !visibaleicon;
                  if (visibaleicon) {
                    passwordIcon = const Icon(Icons.visibility);
                  } else {
                    passwordIcon = const Icon(Icons.visibility_off);
                  }
                });
              },
              icon: passwordIcon,
            ),
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
            hintText: "Enter your password "),
      ),
    );
  }
}
