import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:tourism_application/Componants/List_Of_States.dart';
import 'package:tourism_application/Componants/SquaretTile.dart';
import 'package:tourism_application/Componants/textfiled.dart';
import 'package:tourism_application/LOginChoice.dart';
import 'package:tourism_application/loginpage/signin.dart';

class AgencySignup extends StatefulWidget {
  AgencySignup({Key? key}) : super(key: key);

  @override
  State<AgencySignup> createState() => _AgencySignupState();
}

class _AgencySignupState extends State<AgencySignup> {
  List<bool> isSelected = [true, false, false];
  String? userSelected; // Updated initialization
  final TextEditingController _controller = TextEditingController();
  final cntrfieldcompanyname = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 50),
              Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "Continue as an agency",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      //font fam to add later
                    ),
                  ),
                ],
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
                    'How many employees does your company have?',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              ToggleButtons(
                children: [
                  togglebtn(
                    text: "  3-5  ",
                    isSelected: isSelected[0],
                  ),
                  togglebtn(text: "5-10", isSelected: isSelected[1]),
                  togglebtn(text: "10-50", isSelected: isSelected[2]),
                ],
                isSelected: isSelected,
                fillColor: Colors.transparent,
                onPressed: (int index) {
                  setState(() {
                    for (int buttonIndex = 0;
                        buttonIndex < isSelected.length;
                        buttonIndex++) {
                      isSelected[buttonIndex] = (buttonIndex == index);
                    }
                  });
                },
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "Where is the company restrated ? ",
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
                child: TypeAheadField(
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
                    suggestionsBoxDecoration: const SuggestionsBoxDecoration(
                        color: const Color.fromARGB(109, 255, 255, 255),
                        elevation: 4.0,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        )),
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
                    }),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    " enter  your agency's legal name  ",
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
              textfiled(
                  controller: cntrfieldcompanyname,
                  hintext: "angency name ",
                  obscuretext: false),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    " enter your agency website link  ",
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
              textfiled(
                  controller: cntrfieldcompanyname,
                  hintext: "https : // www.websitename.com/ ",
                  obscuretext: false),
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
            ],
          ),
        ),
      ),
    );
  }

  siginmethod() {}
}

class togglebtn extends StatelessWidget {
  final String text;
  final bool isSelected;
  togglebtn({super.key, required this.text, required this.isSelected});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: isSelected ? Colors.blue : Colors.grey[800],
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.transparent),
        ),
        child: Row(
          children: [
            SizedBox(
              width: 5,
            ),
            Text(
              text,
              style: TextStyle(color: Colors.white, fontSize: 18.5),
            ),
            if (isSelected) // Add checkmark if the button is selected
              Icon(Icons.check, color: Color.fromARGB(255, 120, 33, 33)),
          ],
        ),
      ),
    );
  }
}
