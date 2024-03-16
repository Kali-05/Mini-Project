import 'package:flutter/material.dart';

class profilePage extends StatefulWidget {
  const profilePage({super.key});

  @override
  State<profilePage> createState() => _profilePageState();
}

class _profilePageState extends State<profilePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea( 
        
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(children: [CircleAvatar(radius: 30,backgroundColor: Color.fromARGB(255, 13, 199, 149),)],),
        )),
    );
  }
}
