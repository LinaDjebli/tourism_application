// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:tourism_application/Componants/SquaretTile.dart';
import 'package:tourism_application/constrants/Size.dart';
import 'package:tourism_application/loginpage/signin.dart';
import 'package:flutter/services.dart';

class PhoneAuthPageOne extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    TextEditingController phonecntrlr = TextEditingController();
    // TODO: implement build
    return Scaffold(
      //change the photo and add space before it to make it more spacy :))
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "Phone Verification ",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Center(
          child: ListView(
            reverse: true,
            shrinkWrap: true,
            children: <Widget>[
              Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Image.asset(
                    "lib/photos/3d-casual-life-avatar-girl-with-hair.png",
                    height: 200,
                  )),
              gapH24,
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 60),
                child: Text(
                  "Please enter your valide phone number ",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 90),
                child: Text(
                  "You’ll receive a 4 digit code  ",
                  style: TextStyle(
                      color: Color.fromARGB(255, 103, 103, 103),
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 140),
                child: Text(
                  "to verify next   ",
                  style: TextStyle(
                      color: Color.fromARGB(255, 103, 103, 103),
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
              gapH32,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: IntlPhoneField(
                  controller: phonecntrlr,
                  cursorColor: Colors.white,
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                      labelStyle: TextStyle(color: Colors.white),
                      hintStyle: TextStyle(color: Colors.white),
                      fillColor: Colors.white,
                      labelText: "Phone number",
                      border: OutlineInputBorder(borderSide: BorderSide())),
                ),
              ),
              gapH32,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: sigin(
                  onTap: siginmethod(),
                  btntext: "submit",
                ),
              )
            ].reversed.toList(),
          ),
        ),
      )),
    );
  }

  siginmethod() {}
}

class OtpForm extends StatelessWidget {
  const OtpForm({super.key});

  String get phonecntrlr => phonecntrlr;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.black,
        title: const Text(
          "Verify phone ",
          style: TextStyle(
              color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Center(
          child: Column(children: [
            gapH32,
            const Text(
              "code Sent To ",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            gapH32,
            Form(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white)),
                  child: SizedBox(
                    height: 68,
                    width: 68,
                    child: TextField(
                      decoration: InputDecoration(border: InputBorder.none),
                      showCursor: false,

                      // ignore: deprecated_member_use
                      style: TextStyle(color: Colors.white, fontSize: 30),
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      keyboardType: TextInputType.phone,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white)),
                  child: SizedBox(
                    height: 68,
                    width: 68,
                    child: TextField(
                      decoration: InputDecoration(border: InputBorder.none),
                      showCursor: false,

                      // ignore: deprecated_member_use
                      style: TextStyle(color: Colors.white, fontSize: 30),
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      keyboardType: TextInputType.phone,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white)),
                  child: SizedBox(
                    height: 68,
                    width: 68,
                    child: TextField(
                      decoration: InputDecoration(border: InputBorder.none),
                      showCursor: false,

                      // ignore: deprecated_member_use
                      style: TextStyle(color: Colors.white, fontSize: 30),
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      keyboardType: TextInputType.phone,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.white)),
                  child: SizedBox(
                    height: 68,
                    width: 68,
                    child: TextField(
                      decoration: InputDecoration(border: InputBorder.none),
                      showCursor: false,

                      // ignore: deprecated_member_use
                      style: TextStyle(color: Colors.white, fontSize: 30),
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      keyboardType: TextInputType.phone,
                    ),
                  ),
                )
              ],
            )),
            gapH48,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: sigin(
                onTap: siginmethod(),
                btntext: "Verfiy your Phone Number ",
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "did not Revice Code ? ",
                  style: TextStyle(color: Colors.white),
                ),
                TextButton(
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.zero)),
                  child: Text(
                    "Request Again  ",
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            TextButton(
              style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(vertical: 0))),
              child: Text(
                " Get a Call  ",
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              ),
              onPressed: () {},
            )
          ]),
        ),
      )),
    );
  }

  siginmethod() {}
}
