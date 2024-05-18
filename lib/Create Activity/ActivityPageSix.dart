import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:link_text/link_text.dart';
import 'package:tourism_application/Componants/List_Of_States.dart';
import 'package:tourism_application/Componants/My_Timeline.dart';
import 'package:tourism_application/Componants/Search.dart';
import 'package:tourism_application/constrants/Size.dart';

class ActivityPageSix extends StatefulWidget {
  const ActivityPageSix({super.key});

  @override
  State<ActivityPageSix> createState() => _ActivityPageSixState();
}

class _ActivityPageSixState extends State<ActivityPageSix> {
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue.shade900,
          title: const Text(
            "Activity Creation",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            children: [
              HorizontalTimeline(
                index: 4,
              ),
              Wrap(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Text(
                          "Continue Creating your activity ",
                          style: TextStyle(
                            color: Colors.blue.shade800,
                            fontSize: 30,
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
              Wrap(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Text(
                              "who is this activity suitable for ",
                              style: TextStyle(
                                color: const Color.fromARGB(255, 14, 64, 122),
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                //font fam to add later
                              ),

                              softWrap:
                                  true, // Allows the text to wrap to the next line
                            ),
                            Tooltip(
                              padding: EdgeInsets.all(20),
                              message:
                                  "Add the types of travelers who should not join activity,(Ex:under 18s , pregnat women) ",
                              child: Icon(
                                Icons.info_outline,
                                color: const Color.fromARGB(255, 27, 124, 235),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SearchField(listOfItems: ["alger", "blida", "bou"])
            ],
          ),
        )));
  }
}
