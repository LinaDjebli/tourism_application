import 'package:flutter/material.dart';
import 'package:tourism_application/Componants/My_Timeline.dart';

class ActivityPageEight extends StatefulWidget {
  const ActivityPageEight({super.key});

  @override
  State<ActivityPageEight> createState() => _ActivityPageEightState();
}

class _ActivityPageEightState extends State<ActivityPageEight> {
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
                index: 6,
              ),
            ],
          ),
        )));
  }
}
