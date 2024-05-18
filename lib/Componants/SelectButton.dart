import 'package:flutter/material.dart';
import 'package:tourism_application/Componants/SelectChip.dart';

class SelectButton extends StatefulWidget {
  SelectButton(
      {super.key,
      required this.ButtonText,
      required this.ListOfItems,
      required this.Textoflist});
  String ButtonText;
  List<String> ListOfItems;
  String Textoflist;
  @override
  State<SelectButton> createState() => _SelectButtonState();
}

class _SelectButtonState extends State<SelectButton> {
  List<String> selectedItems = [];
  int _selectedValue = 0;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.grey,
        onPrimary: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), // Rounded corners
        ),
        minimumSize: Size(350, 60),
      ),
      onPressed: () => _openMultiSelect(widget.ListOfItems, widget.Textoflist),
      child: Text(
        widget.ButtonText,
        style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 56, 53, 53)),
      ),
    );
    SizedBox(
      height: 10,
    );
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
    );
  }

  void _openMultiSelect(List<String> items, String Text) async {
    final List<String>? results = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return MultiSelect(
          items: items,
          Text: Text,
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
