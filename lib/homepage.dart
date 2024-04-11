import 'package:flutter/material.dart';
import 'package:justlogin/ProfilePage.dart';
import 'package:justlogin/newhome.dart';
import 'package:justlogin/newworkout.dart';
import 'package:justlogin/workout.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

int _selectedIndex = 0;
final List<Widget> _pages = [
  NewHome(),
  MyWorkoutPage(),
  profilePage(),
];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _pages[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        // backgroundColor: Color.fromARGB(26, 255, 255, 255),
        currentIndex: _selectedIndex,
        onTap: (indexValue) {
          setState(() {
            _selectedIndex = indexValue;
          });
        },
        items: const [
          BottomNavigationBarItem(
            // backgroundColor: Colors.black,
            icon: Icon(Icons.home_outlined, ),
            label: 'Home',
          ),
            BottomNavigationBarItem(
            icon: Icon(Icons.sports_gymnastics_outlined),
            label: 'Workout',),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_3_outlined),
            label: 'Profile',
          ),
          
        ],
      ),
    );
  }
}
