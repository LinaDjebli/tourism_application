import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:intl/intl.dart';
import 'package:tourism_application/Componants/List_Of_States.dart';
import 'package:tourism_application/Componants/SelectChip.dart';
import 'package:tourism_application/Componants/SquaretTile.dart';
import 'package:tourism_application/Componants/textfiled.dart';
import 'package:tourism_application/loginpage/signin.dart';

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
  TextEditingController datecontroller = TextEditingController();
  TextEditingController _controller = TextEditingController();
  FocusNode _Focusenode = FocusNode();

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
              "chose your spoken languages",
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
        SizedBox(
          height: 25,
        ),
        Row(
          children: [
            SizedBox(
              width: 30,
            ),
            Text(
              "enter your birthdate ",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                //font fam to add later
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
            focusNode: _Focusenode,
            controller: datecontroller,
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.calendar_month,
              ),
              hintText: " MM/DD/YYYY",
              enabledBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: const Color.fromARGB(109, 255, 255, 255)),
                borderRadius:
                    BorderRadius.circular(10.0), // Set borderRadius here
              ),
              focusedBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: const Color.fromARGB(109, 255, 255, 255)),
                borderRadius:
                    BorderRadius.circular(10.0), // Set borderRadius here
              ),
              fillColor: Colors.grey,
              filled: true,
            ),
            // readOnly: true,
            onTap: () async {
              _Focusenode.requestFocus();
              DateTime? pickeddate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1900),
                  lastDate: DateTime(2025));

              if (pickeddate != null) {
                setState(() {
                  datecontroller.text =
                      DateFormat("MM/dd/yyyy").format(pickeddate);
                });
              }
            },
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Row(
          children: [
            SizedBox(
              width: 30,
            ),
            Text(
              "Where are you currently located ? ",
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
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              TypeAheadField(
                  noItemsFoundBuilder: (context) => const SizedBox(
                        height: 50,
                        child: Center(
                          child: Text("No Item Found "),
                        ),
                      ),
                  suggestionsCallback: (value) =>
                      ListOfStates.getSuggestion(value),
                  itemBuilder: (context, String suggestion) {
                    return Padding(
                      padding: EdgeInsets.all(6),
                      child: Text(
                        suggestion,
                        overflow: TextOverflow.ellipsis,
                      ),
                    );
                  },

                  //hideKeyboard: true,
                  debounceDuration: const Duration(milliseconds: 400),
                  textFieldConfiguration: TextFieldConfiguration(
                    decoration: InputDecoration(
                      hintText: "search",
                      prefixIcon: Icon(Icons.search),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: const Color.fromARGB(109, 255, 255, 255)),
                        borderRadius: BorderRadius.circular(
                            10.0), // Set borderRadius here
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: const Color.fromARGB(109, 255, 255, 255)),
                        borderRadius: BorderRadius.circular(
                            10.0), // Set borderRadius here
                      ),
                      fillColor: Colors.grey,
                      filled: true,
                    ),
                  ),
                  onSuggestionSelected: (String suggestion) {
                    setState(() {
                      _controller.text =
                          suggestion; // Update the text field with the selected suggestion
                    });
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(109, 255, 255, 255),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            )),
                      ),
                    );
                  }),
            ],
          ),
        ),

        const SizedBox(
          height: 25,
        ),
        const SizedBox(
          height: 25,
        ),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              children: [
                Expanded(
                  child: Divider(
                    thickness: 0.5,
                    color: Colors.grey[400],
                  ),
                ),
                Text(
                  'Or continue with ',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                Expanded(
                    child: Divider(
                  thickness: 0.5,
                  color: Colors.grey[400],
                ))
              ],
            )),

        const SizedBox(
          height: 25,
        ),
        //google and apple sign in
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SquareTile(imagepath: 'lib/photos/google.png'),
            const SizedBox(width: 15),
            SquareTile(
                imagepath:
                    'lib/photos/kisspng-apple-iphone-5af7d926427d25.7954913915261924222724.png')
          ],
        ),

        //regester now
        const SizedBox(
          height: 25,
        ),

        Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              sigin(
                onTap: siginmethod(),
                btntext: "       Back       ",
              ),
              sigin(
                onTap: siginmethod(),
                btntext: "create account",
              ),
            ],
          ),
        )
      ]))),
    );
  }

  siginmethod() {}
}
