import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:tourism_application/Componants/My_Timeline.dart';
import 'package:tourism_application/Componants/Selectitem.dart';
import 'package:tourism_application/Create%20Activity/ActivityName.dart';
import 'package:tourism_application/constrants/Size.dart';
import 'package:tourism_application/loginpage/signin.dart';

class ActivityCategory extends StatefulWidget {
  const ActivityCategory({super.key});

  @override
  State<ActivityCategory> createState() => _ActivityCategoryState();
}

class _ActivityCategoryState extends State<ActivityCategory> {
  bool isSelected = false;
  bool isnature = false;
  bool issport = false;
  bool isculture = false;
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
              index: 0,
            ),
            gapH16,
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Create a new  Activity ",
                  style: TextStyle(
                    color: Colors.blue.shade800,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    //font fam to add later
                  ),
                ),
              ],
            ),
            gapH16,
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Which category your activity belongs to ?  ",
                  style: TextStyle(
                    color: Colors.blue.shade800,
                    fontSize: 17,
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
                        "Select a cateogry for you activity  ",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 7, 38, 63),
                          fontSize: 14,
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
            SizedBox(
              width: 390,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 110,
                    height: 120,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isSelected = true;
                          issport = true;
                          isculture = false;
                          isnature = false;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color:
                              isSelected && issport && !isnature && !isculture
                                  ? Colors.blue // Change color when selected
                                  : Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              color: isSelected &&
                                      issport &&
                                      !isnature &&
                                      !isculture
                                  ? Colors.blue
                                  : Color.fromARGB(255, 48, 80,
                                      102), // Change border color when selected
                              width: 2), // Increase border width when selected
                          boxShadow: [
                            BoxShadow(
                              color: const Color.fromARGB(255, 255, 255, 255)
                                  .withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 2,
                              offset: const Offset(
                                  0, 2), // shadow direction: bottom
                            ),
                            BoxShadow(
                              color: const Color.fromARGB(255, 255, 255, 255)
                                  .withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 2,
                              offset:
                                  const Offset(0, -2), // shadow direction: top
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                                padding: const EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Image.asset(
                                  "lib/photos/Capture_d_écran_2024-05-17_211349-removebg-preview.png",
                                  height: 60,
                                )),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              " Sports",
                              style: const TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontSize: 16),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  gapW12,
                  SizedBox(
                    width: 110,
                    height: 120,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isSelected = true;
                          issport = false;
                          isnature = true;
                          isculture = false;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          color:
                              isSelected && isnature && !isculture && !issport
                                  ? Colors.blue // Change color when selected
                                  : Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              color: isSelected &&
                                      isnature &&
                                      !isculture &&
                                      !issport
                                  ? Colors.blue
                                  : Color.fromARGB(255, 48, 80,
                                      102), // Change border color when selected
                              width: 2), // Increase border width when selected
                          boxShadow: [
                            BoxShadow(
                              color: const Color.fromARGB(255, 255, 255, 255)
                                  .withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 2,
                              offset: const Offset(
                                  0, 2), // shadow direction: bottom
                            ),
                            BoxShadow(
                              color: const Color.fromARGB(255, 255, 255, 255)
                                  .withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 2,
                              offset:
                                  const Offset(0, -2), // shadow direction: top
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                                padding: const EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Image.asset(
                                  "lib/photos/Capture_d_écran_2024-05-17_211349-removebg-preview.png",
                                  height: 60,
                                )),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              " Sports",
                              style: const TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontSize: 16),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  gapW12,
                  SizedBox(
                    width: 110,
                    height: 120,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isSelected = true;
                          issport = false;
                          isnature = false;
                          isculture = true;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          color:
                              isSelected && isculture && !isnature && !issport
                                  ? Colors.blue // Change color when selected
                                  : Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              color: isSelected &&
                                      isculture &&
                                      !isnature &&
                                      !issport
                                  ? Colors.blue
                                  : Color.fromARGB(255, 48, 80,
                                      102), // Change border color when selected
                              width: 2), // Increase border width when selected
                          boxShadow: [
                            BoxShadow(
                              color: const Color.fromARGB(255, 255, 255, 255)
                                  .withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 2,
                              offset: const Offset(
                                  0, 2), // shadow direction: bottom
                            ),
                            BoxShadow(
                              color: const Color.fromARGB(255, 255, 255, 255)
                                  .withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 2,
                              offset:
                                  const Offset(0, -2), // shadow direction: top
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                                padding: const EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Image.asset(
                                  "lib/photos/Capture_d_écran_2024-05-17_211349-removebg-preview.png",
                                  height: 60,
                                )),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              " Sports",
                              style: const TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontSize: 16),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            gapH16,
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Text(
                  " What is the type of your activity ?  ",
                  style: TextStyle(
                    color: Colors.blue.shade800,
                    fontSize: 17,
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
                        "Select the type that describes your activity the best ",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 7, 38, 63),
                          fontSize: 14,
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
            gapH14,
            Column(
              children: <Widget>[
                RadioListTile(
                  title: Text('Hiking '),
                  value: 1,
                  groupValue: _selectedValue,
                  onChanged: (value) {
                    setState(() {
                      _selectedValue = value as int;
                    });
                  },
                ),
                Divider(),
                RadioListTile(
                  title: Text('Tour'),
                  value: 2,
                  groupValue: _selectedValue,
                  onChanged: (value) {
                    setState(() {
                      _selectedValue = value as int;
                    });
                  },
                ),
                Divider(),
                RadioListTile(
                  title: Text('Club Activity'),
                  value: 3,
                  groupValue: _selectedValue,
                  onChanged: (value) {
                    setState(() {
                      _selectedValue = value as int;
                    });
                  },
                ),
                Divider(),
                RadioListTile(
                  title: Text('Atraction Tickit'),
                  value: 4,
                  groupValue: _selectedValue,
                  onChanged: (value) {
                    setState(() {
                      _selectedValue = value as int;
                    });
                  },
                ),
              ],
            ),
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
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ActivityName()));
  }
}
