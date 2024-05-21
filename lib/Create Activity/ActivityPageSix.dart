import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/phone_number.dart';
import 'package:link_text/link_text.dart';
import 'package:multi_dropdown/multiselect_dropdown.dart';
import 'package:tourism_application/Componants/List_Of_States.dart';
import 'package:tourism_application/Componants/My_Timeline.dart';
import 'package:tourism_application/Componants/Search.dart';
import 'package:tourism_application/Componants/SelectButton.dart';
import 'package:tourism_application/Componants/Text&Field.dart';
import 'package:tourism_application/constrants/Size.dart';
import 'package:tourism_application/loginpage/signin.dart';

class ActivityPageSix extends StatefulWidget {
  ActivityPageSix({super.key});

  @override
  State<ActivityPageSix> createState() => _ActivityPageSixState();
}

class _ActivityPageSixState extends State<ActivityPageSix> {
  TextEditingController _controller2 = TextEditingController();
  TextEditingController _controller = TextEditingController();
  TextEditingController phonecntrlr = TextEditingController();
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
              TextandField(
                  tooltipText: "",
                  Text: "What is Suitable for this activity ",
                  TextSize: 16),
              gapH16,
              MultiSelectDropDown(
                clearIcon: Icon(Icons.clear),
                onOptionSelected: (options) {
                  debugPrint(options.toString());
                },
                options: const <ValueItem>[
                  ValueItem(label: 'Option 1', value: '1'),
                  ValueItem(label: 'Option 2', value: '2'),
                  ValueItem(label: 'Option 3', value: '3'),
                  ValueItem(label: 'Option 4', value: '4'),
                  ValueItem(label: 'Option 5', value: '5'),
                  ValueItem(label: 'Option 6', value: '6'),
                ],
                maxItems: 7,
                disabledOptions: const [
                  ValueItem(label: 'Option 1', value: '1')
                ],
                selectionType: SelectionType.multi,
                chipConfig: const ChipConfig(
                  wrapType: WrapType.wrap,
                  backgroundColor: Colors.blue,
                ),
                dropdownHeight: 300,
                selectedOptionTextColor: Colors.blue,
                optionTextStyle: const TextStyle(fontSize: 16),
                selectedOptionIcon: const Icon(Icons.check_circle),
              ),
              gapH32,
              TextandField(
                  tooltipText: "",
                  Text: "What is Not alload for this activity  ",
                  TextSize: 16),
              gapH16,
              MultiSelectDropDown(
                clearIcon: Icon(Icons.clear),
                onOptionSelected: (options) {
                  debugPrint(options.toString());
                },
                options: const <ValueItem>[
                  ValueItem(label: 'Option 1', value: '1'),
                  ValueItem(label: 'Option 2', value: '2'),
                  ValueItem(label: 'Option 3', value: '3'),
                  ValueItem(label: 'Option 4', value: '4'),
                  ValueItem(label: 'Option 5', value: '5'),
                  ValueItem(label: 'Option 6', value: '6'),
                ],
                maxItems: 7,
                disabledOptions: const [
                  ValueItem(label: 'Option 1', value: '1')
                ],
                selectionType: SelectionType.multi,
                chipConfig: const ChipConfig(
                  wrapType: WrapType.wrap,
                  backgroundColor: Colors.blue,
                ),
                dropdownHeight: 300,
                selectedOptionTextColor: Colors.blue,
                optionTextStyle: const TextStyle(fontSize: 16),
                selectedOptionIcon: const Icon(Icons.check_circle),
              ),
              gapH32,
              TextandField(
                  tooltipText: "",
                  Text: "What Items should costumer bring with them   ",
                  TextSize: 16),
              gapH16,
              MultiSelectDropDown(
                clearIcon: Icon(Icons.clear),
                onOptionSelected: (options) {
                  debugPrint(options.toString());
                },
                options: const <ValueItem>[
                  ValueItem(label: 'Option 1', value: '1'),
                  ValueItem(label: 'Option 2', value: '2'),
                  ValueItem(label: 'Option 3', value: '3'),
                  ValueItem(label: 'Option 4', value: '4'),
                  ValueItem(label: 'Option 5', value: '5'),
                  ValueItem(label: 'Option 6', value: '6'),
                ],
                maxItems: 7,
                disabledOptions: const [
                  ValueItem(label: 'Option 1', value: '1')
                ],
                selectionType: SelectionType.multi,
                chipConfig: const ChipConfig(
                  wrapType: WrapType.wrap,
                  backgroundColor: Colors.blue,
                ),
                dropdownHeight: 300,
                selectedOptionTextColor: Colors.blue,
                optionTextStyle: const TextStyle(fontSize: 16),
                selectedOptionIcon: const Icon(Icons.check_circle),
              ),
              gapH32,
              TextandField(
                  tooltipText: "", Text: "Emergency Contact", TextSize: 16),
              gapH18,
              IntlPhoneField(
                controller: phonecntrlr,
                cursorColor: const Color.fromARGB(255, 0, 0, 0),
                style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                decoration: const InputDecoration(
                    labelStyle: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                    hintStyle: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                    fillColor: Color.fromARGB(255, 0, 0, 0),
                    labelText: "Phone number",
                    focusColor: Colors.blue,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                    )),
              ),
              Container(
                alignment: Alignment.bottomRight,
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                    width: 150,
                    child: sigin(onTap: nextMethod, btntext: "Next")),
              )
            ],
          ),
        )));
  }

  nextMethod() {}
}
