import 'package:flutter/material.dart';
import 'package:justlogin/newworkout.dart';

class MyRoutines extends StatefulWidget {
  const MyRoutines({Key? key}) : super(key: key);

  @override
  State<MyRoutines> createState() => _MyRoutinesState();
}

class _MyRoutinesState extends State<MyRoutines> {
  // Store the names of selected exercises
  Set<String> selectedExercises = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                  ),
                  child: Column(
                    children: [
                    
                      GestureDetector(
                        child: customContainer(
                          backgroundColor: selectedExercises.contains('Brench Press')
                              ? const Color.fromARGB(255, 127, 127, 127)
                              : Colors.white,
                          title: 'Brench Press',
                          subTitle: 'chest',
                        ),
                        onTap: () {
                          setState(() {
                            // Toggle selection
                            if (selectedExercises.contains('Brench Press')) {
                              selectedExercises.remove('Brench Press');
                            } else {
                              selectedExercises.add('Brench Press');
                            }
                          });
                        },
                      ),
                      Divider(),
                   
                      GestureDetector(
                        child: customContainer(
                          backgroundColor: selectedExercises.contains('Bent Over Row')
                              ? const Color.fromARGB(255, 127, 127, 127)
                              : Colors.white,
                          title: 'Bent Over Row',
                          subTitle: 'chest',
                        ),
                        onTap: () {
                          setState(() {
                          
                            if (selectedExercises.contains('Bent Over Row')) {
                              selectedExercises.remove('Bent Over Row');
                            } else {
                              selectedExercises.add('Bent Over Row');
                            }
                          });
                        },
                      ),
                      Divider(),
                      
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              child: Container(
                decoration: BoxDecoration(color: Color.fromARGB(255, 78, 212, 85)),
                height: 65,
                width: double.infinity,
                alignment: Alignment(0, 0),
                child: Text('submit'),
              ),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyWorkoutPage(selectedExercises: selectedExercises),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget customContainer({
    required Color backgroundColor,
    required String title,
    required String subTitle,
  }) {
    return Container(
      width: double.infinity,
      height: 90,
      decoration: BoxDecoration(color: backgroundColor),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: TextStyle(fontSize: 20), // Customize your text style here
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              subTitle,
              style: TextStyle(fontSize: 16), // Customize your text style here
            ),
          )
        ],
      ),
    );
  }
}