import 'package:flutter/material.dart';
import 'package:tourism_application/Componants/My_Timeline.dart';
import 'package:tourism_application/Componants/SelectChip.dart';
import 'package:tourism_application/Create%20Activity/ActivityCategory.dart';
import 'package:tourism_application/constrants/Size.dart';
import 'package:tourism_application/loginpage/signin.dart';

class ActivityPageFive extends StatefulWidget {
  const ActivityPageFive({super.key});

  @override
  State<ActivityPageFive> createState() => _ActivityPageFiveState();
}

class _ActivityPageFiveState extends State<ActivityPageFive> {
  List<String> selectedItems = [];
  int _selectedValue = 0;
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
              index: 3,
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
                            "Who the costumer will interact with  ",
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
                                "Specify people which the cosumer need to interact with ",
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
            gapH18,
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
                "Select people",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 56, 53, 53)),
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
                            "is Food included ? ",
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
                                "Specify the availibily of food and what meal to expect ",
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
            Column(children: <Widget>[
              RadioListTile(
                title: Text('Yes '),
                value: 1,
                groupValue: _selectedValue,
                onChanged: (value) {
                  setState(() {
                    _selectedValue = value as int;
                  });
                },
              ),
              SizedBox(width: 350, child: Divider()),
              RadioListTile(
                title: Text('No'),
                value: 2,
                groupValue: _selectedValue,
                onChanged: (value) {
                  setState(() {
                    _selectedValue = value as int;
                  });
                },
              ),
              if (_selectedValue == 1) ...{
                //2checkbooks for food choice
              }
            ]),
            gapH18,
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
                            "is Transport included ? ",
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
                                "Define if trnasportation is included in this activity ",
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
            Column(children: <Widget>[
              RadioListTile(
                title: Text('Yes '),
                value: 1,
                groupValue: _selectedValue,
                onChanged: (value) {
                  setState(() {
                    _selectedValue = value as int;
                  });
                },
              ),
              SizedBox(width: 350, child: Divider()),
              RadioListTile(
                title: Text('No'),
                value: 2,
                groupValue: _selectedValue,
                onChanged: (value) {
                  setState(() {
                    _selectedValue = value as int;
                  });
                },
              ),
              if (_selectedValue == 1) ...{
                //slect  for transport choice
                //and does the costumer travel ?
              }
            ]),
            Container(
              alignment: Alignment.bottomRight,
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                  width: 150, child: sigin(onTap: nextMethod, btntext: "Next")),
            )
          ],
        ),
      )),
    );
  }

  nextMethod() {
    // ignore: prefer_const_constructors
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ActivityCategory()));
  }

  void _openMultiSelect() async {
    final List<String> items = ["Driver", "Guide", " Nobody", "Instructor"];
    final List<String>? results = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return MultiSelect(
          items: items,
          Text: "Select people  ",
        );
      },
    );

    if (results != null) {
      setState(() {
        selectedItems = results;
      });
    }
  }
}
