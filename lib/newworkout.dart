import 'package:flutter/material.dart';
import 'package:justlogin/routines.dart';

class MyWorkoutPage extends StatefulWidget {
  const MyWorkoutPage({super.key});

  @override
  State<MyWorkoutPage> createState() => _MyWorkoutPageState();
}

class _MyWorkoutPageState extends State<MyWorkoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Text(
            'Quick Start',
            style: TextStyle(
                fontFamily: 'RNSPhysis',
                fontSize: 20,
                fontWeight: FontWeight.w700),
          ),SizedBox(height: 10,),
          GestureDetector(
            child: Container(alignment: Alignment(0, 0),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 0, 117, 213),
              ),
              height: 60,
              width: double.infinity,
              child: Text(
                'Add Exercise +',
                style: TextStyle(
                    fontFamily: 'RNSPhysis',
                    fontSize: 17,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              ),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) =>
                MyRoutines()
              ),);
            },
          )
        ],
      )),
    );
  }
}
