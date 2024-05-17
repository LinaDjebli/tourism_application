import 'package:flutter/material.dart';

class SizebaleTextfield extends StatefulWidget {
  SizebaleTextfield(
      {Key? key,
      required this.controller,
      required this.sizefield,
      required this.max,
      required this.hintText})
      : super(key: key);

  final TextEditingController controller;
  final int sizefield;
  final int max;
  final String hintText;

  @override
  State<SizebaleTextfield> createState() => _SizebaleTextfieldState();
}

class _SizebaleTextfieldState extends State<SizebaleTextfield> {
  int characterCount = 0;

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(_updateCharacterCount);
  }

  @override
  void dispose() {
    widget.controller.removeListener(_updateCharacterCount);
    super.dispose();
  }

  void _updateCharacterCount() {
    setState(() {
      characterCount = widget.controller.text.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextField(
            cursorColor: Colors.black,
            controller: widget.controller,
            maxLines: widget.sizefield,
            decoration: InputDecoration(
              fillColor: Colors.grey,
              filled: true,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: const Color.fromARGB(109, 255, 255, 255),
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: const Color.fromARGB(109, 255, 255, 255),
                ),
                borderRadius: BorderRadius.circular(20.0),
              ),
              hintText: widget.hintText,
            ),
          ),
          SizedBox(height: 10),
          Text(
            '$characterCount / ${widget.max}',
            textAlign: TextAlign.end,
            style: TextStyle(
              color: characterCount > widget.max
                  ? Colors.red
                  : const Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        ],
      ),
    );
  }
}
