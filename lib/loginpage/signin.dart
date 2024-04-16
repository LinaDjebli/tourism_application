import 'package:flutter/material.dart';

class sigin extends StatelessWidget {
  final Function()? onTap;
  const sigin({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
            padding: EdgeInsets.all(25),
            margin: EdgeInsets.symmetric(horizontal: 28),
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(15.0)),
            child: Center(
                child: Text(
              "Sign in ",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 16),
            ))));
  }
}
