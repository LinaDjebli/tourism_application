import 'package:flutter/material.dart';

class textfiled extends StatelessWidget {
  final controller;
  final String hintext;
  final bool obscuretext;

  textfiled({
    Key? key,
    required this.controller,
    required this.hintext,
    required this.obscuretext,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        controller: controller,
        obscureText: obscuretext,
        decoration: InputDecoration(
          hintText: hintext,
          enabledBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: const Color.fromARGB(109, 255, 255, 255)),
            borderRadius: BorderRadius.circular(10.0), // Set borderRadius here
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: const Color.fromARGB(109, 255, 255, 255)),
            borderRadius: BorderRadius.circular(10.0), // Set borderRadius here
          ),
          fillColor: Colors.grey,
          filled: true,
        ),
      ),
    );
  }
}
