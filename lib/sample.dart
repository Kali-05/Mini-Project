import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
      body: SafeArea(
        child: Row(
          children: [
            buildCustomContainer(140, 150), SizedBox(width:10,), buildCustomContainer(140, 150),
          ],

        ), 
     ),
  
    );
  }

  Widget buildCustomContainer(double width, double height) {
    return Column(
      children: [
        Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6),
          ),
        ),
        SizedBox(
          height: 13,
        ),
        Container(
          width: width,
          height: 25,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6),
          ),
        ),
      ],
    );
  }
}
