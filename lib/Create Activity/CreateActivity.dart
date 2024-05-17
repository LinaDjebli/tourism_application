import 'package:flutter/material.dart';
import 'package:tourism_application/Componants/SizebaleTextField.dart';
import 'package:tourism_application/Componants/textfiled.dart';
import 'package:tourism_application/constrants/Size.dart';

class CreateActivity extends StatefulWidget {
  CreateActivity({super.key});

  @override
  State<CreateActivity> createState() => _CreateActivityState();
}

class _CreateActivityState extends State<CreateActivity> {
  TextEditingController TextField1Controller = TextEditingController();
  TextEditingController Controller2 = TextEditingController();
  bool showHelpMessage = false;

  void _toggleHelpMessage() {
    setState(() {
      showHelpMessage = !showHelpMessage;
    });
  }

  @override
  Widget build(BuildContext context) {
    int characterCount = 0;

    bool showHelpMessage = false;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          " ",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            gapH12,
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Welcome , users",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    //font fam to add later
                  ),
                ),
              ],
            ),
            gapH12,
            Wrap(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    Expanded(
                      child: Text(
                        "Writing a detailed description about your activity here",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 195, 194, 194),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          //font fam to add later
                        ),
                        softWrap:
                            true, // Allows the text to wrap to the next line
                      ),
                    ),
                  ],
                ),
              ],
            ),
            gapH16,
            Row(
              children: [
                Text("gggggggggg",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 195, 194, 194),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    )),
                IconButton(
                    onPressed: _toggleHelpMessage,
                    icon: Icon(
                      Icons.help,
                      color: Colors.white,
                    ))
              ],
            ),
            if (showHelpMessage)
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                color: Colors.grey[200],
                child: Text(
                  'Help message: Please insert your text here.',
                  style: TextStyle(
                      color: const Color.fromARGB(255, 240, 240, 240)),
                ),
              ),
            gapH16,
            SizebaleTextfield(
              sizefield: 2,
              max: 12,
              controller: Controller2,
              hintText: "Enter your description here ",
            ),
            gapH16,
          ],
        ),
      )),
    );
  }
}
