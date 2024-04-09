import 'package:flutter/material.dart';
import 'package:justlogin/Widgets/Fonts.dart';

class WorkoutPage extends StatefulWidget {
  const WorkoutPage({Key? key}) : super(key: key);

  @override
  State<WorkoutPage> createState() => _WorkoutPageState();
}

class _WorkoutPageState extends State<WorkoutPage> {
  String? selectedDay;
  final List<String> daysOfWeek = [
    'Sunday',
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
  ];

  bool showChecklist = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SemiFont(textname: 'Quick Start'),
              SizedBox(height: 16),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Color.fromARGB(255, 6, 73, 241),
                  ),
                ),
                onPressed: () {
                  setState(() {
                    showChecklist = true;
                  });
                },
                child: Text(
                  'Click Here To Add Routine',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 16),
              if (showChecklist)
                Column(
                  children: [
                    for (var day in daysOfWeek)
                      RadioListTile<String>(
                        overlayColor: MaterialStatePropertyAll(Colors.white),
                        activeColor: Color.fromARGB(255, 36, 113, 255),
                        title: Text(day),
                        value: day,
                        groupValue: selectedDay,
                        onChanged: (value) {
                          setState(() {
                            selectedDay = value;
                          });
                        },
                      ),
                    ElevatedButton(
                      onPressed: () {
                        if (selectedDay != null) {
                          
                          print('Selected day: $selectedDay');
                          setState(() {
                            showChecklist = false; 
                            selectedDay = null; 
                          });
                        } else {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: Text('Error'),
                              content: Text('Please select a day.'),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text('OK'),
                                ),
                              ],
                            ),
                          );
                        }
                      },
                      child: Text('Submit'),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class SemiFont extends StatelessWidget {
  final String textname;

  const SemiFont({Key? key, required this.textname}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      textname,
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }
}
