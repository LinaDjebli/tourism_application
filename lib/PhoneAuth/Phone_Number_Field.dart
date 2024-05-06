import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PhoneNumberField extends ConsumerWidget {
  const PhoneNumberField(
      {super.key,
      required this.PhoneController,
      required this.focusNode,
      required this.onChanged});
  final FocusNode focusNode;
  final TextEditingController PhoneController;
  final void Function(String)? onChanged;
  void _onTap() {
    if (focusNode.hasFocus) {
      focusNode.unfocus();
    } else {
      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // TODO: implement build
    return TextFormField(
      controller: PhoneController,
      focusNode: focusNode,
      onTap: _onTap,
      decoration: InputDecoration(
          hintText: "phone number",
          hintStyle: TextStyle(color: Colors.white),
          label: const Text(
            "915*********",
            style: TextStyle(color: Colors.white),
          ),
          counterText: "",
          counterStyle: TextStyle(color: Colors.white),
          border: const OutlineInputBorder()),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      textInputAction: TextInputAction.send,
      keyboardType: TextInputType.number,
      onChanged: onChanged,
      onEditingComplete: () => onChanged!(''),
      inputFormatters: [],
      maxLength: 10,
    );
  }
}
