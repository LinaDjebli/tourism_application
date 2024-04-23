import 'package:flutter/material.dart';

class GuideSignup extends StatefulWidget {
  const GuideSignup({super.key});
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _GuideSignup();
  }
}

class _GuideSignup extends State<GuideSignup> {
  List<String> SelectedItems = [];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Padding(
          padding: EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ElevatedButton(
                  onPressed: _onpressedmethode,
                  child: const Text("Select your spoken languages ")),
              const Divider(
                height: 30,
              ),
              Wrap(
                children:
                    SelectedItems.map((e) => Chip(label: Text(e))).toList(),
              )
            ],
          )),
    );
  }

  void _onpressedmethode() async {
    final List<String> Items = [
      "English",
      "Francais"
          "Italian",
      "Arabic"
    ];
    final List<String> results = await showDialog(
        context: context,
        builder: (BuildContext context) {
          return MultiSelect(items: Items);
        });

    if (results != null) {
      setState(() {
        SelectedItems = results;
      });
    }
  }
}

class MultiSelect extends StatefulWidget {
  final List<String> items;
  const MultiSelect({Key? key, required this.items}) : super(key: key);

  @override
  State<MultiSelect> createState() {
    return MultiSelectState();
  }
}

class MultiSelectState extends State<MultiSelect> {
  final List<String> _SelectedItems = [];

  void _itemChange(String Itemvalue, bool isSelected) {
    if (isSelected) {
      _SelectedItems.add(Itemvalue);
    } else {
      _SelectedItems.remove(Itemvalue);
    }
  }

  void _canel() {
    Navigator.pop(context);
  }

  void _submit() {
    Navigator.pop(context, _SelectedItems);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Choose your languages "),
      content: SingleChildScrollView(
        child: ListBody(
          children: widget.items
              .map((item) => CheckboxListTile(
                  value: _SelectedItems.contains(item),
                  title: Text(item),
                  controlAffinity: ListTileControlAffinity.leading,
                  onChanged: (isCheked) => _itemChange(item, isCheked!)))
              .toList(),
        ),
      ),
      actions: [
        TextButton(onPressed: _canel, child: const Text("Cancel")),
        ElevatedButton(
          onPressed: _submit,
          child: const Text("Submit"),
        )
      ],
    );
  }
}
