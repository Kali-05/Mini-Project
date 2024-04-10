import 'package:flutter/material.dart';

class SemiFont extends StatelessWidget {
  final String textname;

  const SemiFont({
    super.key, required this.textname,
  });

  @override
  Widget build(BuildContext context) {
    return Text(textname,
    style: TextStyle(
      fontFamily: 'RNSPhysis',
      fontWeight: FontWeight.w500,
      color: Colors.white,
      fontSize: 23
    ), 
    );
  }
}

class BoldFont extends StatelessWidget {
  final String textname;

  const BoldFont({
    super.key, required this.textname,
  });

  @override
  Widget build(BuildContext context) {
    return Text(textname,
    style: TextStyle(
      fontFamily: 'RNSPhysis',
      fontWeight: FontWeight.w900,
      color: Colors.white,
      fontSize: 23
    ), 
    );
  }
}

class SemiFont2 extends StatelessWidget {
  final String textname;

  const SemiFont2({
    super.key, required this.textname,
  });

  @override
Widget build(BuildContext context) {
    return Text(textname,
    style: TextStyle(
      fontFamily: 'RNSPhysis',
      fontWeight: FontWeight.w500,
      color: const Color.fromARGB(255, 182, 182, 182),
      fontSize: 23
    ), 
    );
}
  }
class BoldFont3 extends StatelessWidget {
  final String textname;

  const BoldFont3({
    super.key, required this.textname,
  });

  @override
  Widget build(BuildContext context) {
    return Text(textname,
    style: TextStyle(
      fontFamily: 'RNSPhysis',
      fontWeight: FontWeight.w700,
      color: Color.fromARGB(255, 255, 255, 255),
      fontSize: 23
    ), 
    );
  }
}

class SemiFont4 extends StatelessWidget {
  final String textname;

  const SemiFont4({
    super.key, required this.textname,
  });

  @override
Widget build(BuildContext context) {
    return Text(textname,
    style: TextStyle(
      fontFamily: 'RNSPhysis',
      fontWeight: FontWeight.w500,
      color: Color.fromARGB(255, 255, 255, 255),
      fontSize: 19
    ), 
    );
}
  }

  class SemiFont5 extends StatelessWidget {
  final String textname;

  const SemiFont5({
    super.key, required this.textname,
  });

  @override
Widget build(BuildContext context) {
    return Text(textname,
    style: TextStyle(
      fontFamily: 'RNSPhysis',
      fontWeight: FontWeight.w500,
      color: Color.fromARGB(255, 0, 0, 0),
      fontSize: 19
    ), 
    );
}
  }

   class SemiFont6 extends StatelessWidget {
  final String textname;

  const SemiFont6({
    super.key, required this.textname,
  });

  @override
Widget build(BuildContext context) {
    return Text(textname,
    style: TextStyle(
      fontFamily: 'RNSPhysis',
      fontWeight: FontWeight.w500,
      color: Color.fromARGB(255, 81, 81, 81),
      fontSize: 15
    ), 
    );
}
  }