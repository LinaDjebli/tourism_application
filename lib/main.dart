import 'package:flutter/material.dart';
import 'package:tourism_application/LOginChoice.dart';
import 'package:tourism_application/Signuppage/AgencySignup.dart';
import 'package:tourism_application/Signuppage/GuideSignup.dart';
import 'package:tourism_application/Signuppage/Signup.dart';
import 'package:tourism_application/loginpage/login.dart';
import 'first_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: GuideSignup());
  }
}
