import 'package:flutter/material.dart';

class sigin extends StatelessWidget {
  final Function()? onTap;
  final String btntext;
  const sigin({super.key, required this.onTap, required this.btntext});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: InkWell(
            child: Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15.0)),
                child: Center(
                    child: Text(
                  btntext,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 16),
                )))));
  }
}
