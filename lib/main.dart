import 'package:flutter/material.dart';
import 'package:tourism_application/Create%20Activity/ActivityCategory.dart';
import 'package:tourism_application/LOginChoice.dart';
import 'package:tourism_application/PhoneAuth/Phone_Auth_First_Page.dart';
import 'package:tourism_application/Create%20Activity/CreateActivity.dart';
import 'package:tourism_application/SelectIntrests.dart';
import 'package:tourism_application/Signuppage/AgencySignup.dart';
import 'package:tourism_application/Signuppage/GuideSignup.dart';
import 'package:tourism_application/Signuppage/Signup.dart';
import 'package:tourism_application/loginpage/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: ActivityCategory());
  }
}
