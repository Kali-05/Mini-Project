import 'package:flutter/material.dart';
import 'package:justlogin/ProfilePage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController controller = ScrollController();
  int index = 0;
  final screen =[
    HomePage(),
    profilePage()
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 12,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 12,
                ),
                CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 8, 152, 137),
                  maxRadius: 25,
                ),
                SizedBox(
                  width: 12,
                ),
                Text(
                  'Alan J Babu',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'RNSPhysis',
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
            Expanded(child: IndexedStack(index: index,children: screen,)),
            const SizedBox(
              height: 25,
            ),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Workouts details',
                  style: TextStyle(
                      color: Color.fromARGB(255, 234, 234, 234),
                      fontFamily: 'RNSPhysis',
                      fontWeight: FontWeight.w600,
                      fontSize: 22),
                ),
                SizedBox(
                  width: 32,
                  child: Image(
                    image: AssetImage(
                        "images/icons8-woman-lifting-weights-48.png"),
                    fit: BoxFit.contain,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Time',
                  style: TextStyle(
                      color: Color.fromARGB(255, 179, 179, 179),
                      fontFamily: 'RNSPhysis',
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                ),
                SizedBox(
                  width: 50,
                ),
                Text(
                  'Weight',
                  style: TextStyle(
                      color: Color.fromARGB(255, 179, 179, 179),
                      fontFamily: 'RNSPhysis',
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                ),
                SizedBox(
                  width: 50,
                ),
                Text(
                  'Records',
                  style: TextStyle(
                      color: Color.fromARGB(255, 179, 179, 179),
                      fontFamily: 'RNSPhysis',
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 20,
                  height: 40,
                ),
                Text(
                  '42Min',
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontFamily: 'RNSPhysis',
                      fontWeight: FontWeight.w400,
                      fontSize: 20),
                ),
                SizedBox(
                  width: 28,
                  height: 40,
                ),
                Text(
                  '50Kg',
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontFamily: 'RNSPhysis',
                      fontWeight: FontWeight.w400,
                      fontSize: 20),
                ),
                SizedBox(
                  width: 55,
                  height: 40,
                ),
                Text(
                  '4',
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontFamily: 'RNSPhysis',
                      fontWeight: FontWeight.w400,
                      fontSize: 20),
                ),
                SizedBox(width: 4),
                SizedBox(
                  width: 25,
                  height: 22,
                  child: Image(
                    image: AssetImage('images/icons8-prize-48.png'),
                    fit: BoxFit.contain,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(
                color: Color.fromARGB(57, 255, 255, 255),
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Workout',
                  style: TextStyle(
                      color: Color.fromARGB(255, 179, 179, 179),
                      fontFamily: 'RNSPhysis',
                      fontWeight: FontWeight.w400,
                      fontSize: 20),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 150,
              // decoration:
              //BoxDecoration(color: Color.fromARGB(43, 220, 220, 220)),
              child: Scrollbar(
                thumbVisibility: true,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      buildExerciseRow('5 Sets', 'Lateral Raise'),
                      buildExerciseRow('3 Sets', 'Upper Raise'),
                      buildExerciseRow('3 Sets', 'Upper Raise'),
                    ],
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(
                color: Color.fromARGB(57, 255, 255, 255),
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Suggested Foods',
                  style: TextStyle(
                    color: Color.fromARGB(162, 255, 255, 255),
                    fontFamily: 'RNSPhysis',
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  width: 32,
                  child: Image(
                    image: AssetImage("images/icons8-pot-of-food-48.png"),
                    fit: BoxFit.contain,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 17,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  buildCustomContainer(140, 150),
                  const SizedBox(width: 20),
                  buildCustomContainer(140, 150),
                  const SizedBox(width: 20),
                  buildCustomContainer(140, 150),
                  const SizedBox(width: 20),
                  buildCustomContainer(140, 150),
                  const SizedBox(width: 20),
                  buildCustomContainer(140, 150),
                  const SizedBox(width: 20),
                  buildCustomContainer(140, 150),
                  const SizedBox(width: 20),
                  buildCustomContainer(140, 150)
                ],
              ),
            )
          ],
        ),
      ),

      //########    NAVIGATION BAR       ###########

      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
            indicatorColor: Color.fromARGB(255, 14, 50, 210),
            backgroundColor: Colors.black,
            labelTextStyle:
                MaterialStateProperty.all(TextStyle(color: Colors.white))),
        child: NavigationBar(
            selectedIndex: index,
            onDestinationSelected: (index) =>
                setState(() => this.index = index),
            destinations: [
              NavigationDestination(
                  icon: Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  label: 'Home'),
              NavigationDestination(
                  icon: Icon(
                    Icons.sports_gymnastics,
                    color: Colors.white,
                  ),
                  label: 'Workout'),
              // NavigationDestination(
              //     icon: Icon(
              //       Icons.person,
              //       color: Colors.white,
              //     ),
                  // label: 'Account')
            ]),
      ),
    );
  }

  Widget buildExerciseRow(String sets, String exerciseName) {
    return Row(
      children: [
        SizedBox(
          width: 20,
          height: 70,
        ),
        Container(
          child: CircleAvatar(
            backgroundColor: Color.fromARGB(255, 31, 219, 172),
            maxRadius: 25,
          ),
        ),
        SizedBox(width: 12),
        Text(
          sets,
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontFamily: 'RNSPhysis',
            fontWeight: FontWeight.w400,
            fontSize: 20,
          ),
        ),
        SizedBox(width: 12),
        Text(
          exerciseName,
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontFamily: 'RNSPhysis',
            fontWeight: FontWeight.w400,
            fontSize: 20,
          ),
        ),
      ],
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
            borderRadius: BorderRadius.circular(4),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Food name'),
            ],
          ),
        ),
      ],
    );
  }
}
