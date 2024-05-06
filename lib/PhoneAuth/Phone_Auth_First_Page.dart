// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tourism_application/PhoneAuth/Phone_Number_Field.dart';
import 'package:tourism_application/PhoneAuth/Size.dart';

class PhoneAuthPageOne extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: SingleChildScrollView(
        child: ListView(
          reverse: true,
          shrinkWrap: true,
          children: <Widget>[
            gapH24,
            Text(
              "Please enter your valide phone number ",
              style: TextStyle(color: Colors.white),
            ),
            gapH64,
            gapH32,
            SingInForm()
          ].reversed.toList(),
        ),
      )),
    );
  }
}

class SingInForm extends HookConsumerWidget {
  const SingInForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = TextEditingController();
    final focusNode = FocusNode();
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        PhoneNumberField(
          PhoneController: controller,
          focusNode: focusNode,
          onChanged: (num) {},
        )
      ],
    );
  }
}
