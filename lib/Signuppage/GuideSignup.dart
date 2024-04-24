import 'package:flutter/material.dart';
import 'package:tourism_application/Componants/SelectChip.dart';
import 'package:tourism_application/Componants/SquaretTile.dart';

class GuideSignup extends StatefulWidget {
  const GuideSignup({super.key});
  @override
  State<StatefulWidget> createState() {
    ;
    // TODO: implement createState
    return _GuideSignup();
  }
}

class _GuideSignup extends State<GuideSignup> {
  List<String> selectedItems = [];
  void _openMultiSelect() async {
    final List<String> items = ["English", "Francais", "Italian", "Arabic"];
    final List<String>? results = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return MultiSelect(
          items: items,
          Text: "choose your language ",
        );
      },
    );

    if (results != null) {
      setState(() {
        selectedItems = results;
      });
    }
  }

  List<String> SelectedItems = [];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: SingleChildScrollView(
              child: Column(children: [
        const SizedBox(height: 50),
        Row(
          children: [
            SizedBox(
              width: 30,
            ),
            Text(
              "Fill in your informations",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
                //font fam to add later
              ),
            ),
          ],
        ),
        Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          SizedBox(
            height: 150,
            width: 180,
            child: Image.asset("lib/photos/4722714.jpg"),
          ),
        ]),
        SizedBox(
          height: 25,
        ),
        Row(
          children: [
            SizedBox(
              width: 30,
            ),
            Text(
              "chose your spoen languages",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                //font fam to add later
              ),
            ),
          ],
        ),
        SizedBox(
          height: 25,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.grey,
            onPrimary: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10), // Rounded corners
            ),
            minimumSize: Size(350, 60),
          ),
          onPressed: _openMultiSelect,
          child: const Text(
            "Please select the languages you speak ",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Wrap(
          children: selectedItems
              .map((item) => Chip(
                    backgroundColor: Colors.grey,
                    label: Text(item),
                    onDeleted: () {
                      setState(() {
                        selectedItems.remove(item);
                      });
                    },
                  ))
              .toList(),
        ),
      ]))),
    );
  }
}
