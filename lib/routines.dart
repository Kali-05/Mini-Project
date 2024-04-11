import 'package:flutter/material.dart';
import 'package:justlogin/Widgets/Fonts.dart';

class MyRoutines extends StatefulWidget {
  const MyRoutines({Key? key}) : super(key: key);

  @override
  State<MyRoutines> createState() => _MyRoutinesState();
}

class _MyRoutinesState extends State<MyRoutines> {
  Color changeColor1 = Colors.white;
  Color changeColor2 = Colors.white;
  Color changeColor3 = Colors.white;

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
                  decoration: BoxDecoration(color: Colors.red),
                  child: Column(
                    children: [
                      Text('Routine 1'),
                      GestureDetector(
                        child: customContainer(
                          backgroundColor: changeColor1,
                          title: 'Brench Press',
                          subTitle: 'chest',
                        ),
                        onTap: () {
                          setState(() {
                            changeColor1 = changeColor1 == Colors.white
                                ? const Color.fromARGB(255, 127, 127, 127)
                                : Colors.white;
                          });
                          print('hello');
                        },
                      ),
                      Divider(),
                      GestureDetector(
                        child: customContainer(
                          backgroundColor: changeColor2,
                          title: 'Bent Over Row',
                          subTitle: 'Upper Back',
                        ),
                        onTap: () {
                          setState(() {
                            changeColor2 = changeColor2 == Colors.white
                                ? const Color.fromARGB(255, 127, 127, 127)
                                : Colors.white;
                          });
                          print('hello');
                        },
                      ),
                      Divider(),
                      GestureDetector(
                        child: customContainer(
                          backgroundColor: changeColor3,
                          title: 'Bicep Curl',
                          subTitle: 'Biceps',
                        ),
                        onTap: () {
                          setState(() {
                            changeColor3 = changeColor3 == Colors.white
                                ? const Color.fromARGB(255, 127, 127, 127)
                                : Colors.white;
                          });
                          print('hello');
                        },
                      ),
                      Divider(),
                      GestureDetector(
                        child: customContainer(
                          backgroundColor: changeColor2,
                          title: 'Bent Over Row',
                          subTitle: 'Upper Back',
                        ),
                        onTap: () {
                          setState(() {
                            changeColor2 = changeColor2 == Colors.white
                                ? const Color.fromARGB(255, 127, 127, 127)
                                : Colors.white;
                          });
                          print('hello');
                        },
                      ),Divider(),
                      GestureDetector(
                        child: customContainer(
                          backgroundColor: changeColor2,
                          title: 'Bent Over Row',
                          subTitle: 'Upper Back',
                        ),
                        onTap: () {
                          setState(() {
                            changeColor2 = changeColor2 == Colors.white
                                ? const Color.fromARGB(255, 127, 127, 127)
                                : Colors.white;
                          });
                          print('hello');
                        },
                      ),Divider(),
                      GestureDetector(
                        child: customContainer(
                          backgroundColor: changeColor2,
                          title: 'Bent Over Row',
                          subTitle: 'Upper Back',
                        ),
                        onTap: () {
                          setState(() {
                            changeColor2 = changeColor2 == Colors.white
                                ? const Color.fromARGB(255, 127, 127, 127)
                                : Colors.white;
                          });
                          print('hello');
                        },
                      ),Divider(),
                      GestureDetector(
                        child: customContainer(
                          backgroundColor: changeColor2,
                          title: 'Bent Over Row',
                          subTitle: 'Upper Back',
                        ),
                        onTap: () {
                          setState(() {
                            changeColor2 = changeColor2 == Colors.white
                                ? const Color.fromARGB(255, 127, 127, 127)
                                : Colors.white;
                          });
                          print('hello');
                        },
                      ),Divider(),
                      GestureDetector(
                        child: customContainer(
                          backgroundColor: changeColor2,
                          title: 'Bent Over Row',
                          subTitle: 'Upper Back',
                        ),
                        onTap: () {
                          setState(() {
                            changeColor2 = changeColor2 == Colors.white
                                ? const Color.fromARGB(255, 127, 127, 127)
                                : Colors.white;
                          });
                          print('hello');
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              decoration:
                  BoxDecoration(color: Color.fromARGB(255, 78, 212, 85)),
              height: 70,
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
 