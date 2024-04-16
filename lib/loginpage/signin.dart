import 'package:flutter/material.dart';

class sigin extends StatelessWidget {
  const sigin({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(25),
        margin: EdgeInsets.symmetric(horizontal: 28),
        decoration: BoxDecoration(
            color: Colors.blue[800], borderRadius: BorderRadius.circular(15.0)),
        child: Center(
            child: Text(
          "sigin",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 16),
        )));
  }
}
