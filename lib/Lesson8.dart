import 'package:flutter/material.dart';

class Lesson8 extends StatelessWidget {
  const Lesson8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.topCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(10, 80, 10, 25),
              padding: EdgeInsets.all(10),
              height: 150,
              width: 150,

              decoration: BoxDecoration(
                color: Colors.amber[400],
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(254, 48, 33, 33),
                    offset: Offset(0, 0),
                    blurRadius: 35,
                  ),
                ],
                border: Border.all(color: Colors.black, width: 1),
              ),
              child: Center(
                child: Image.asset(
                  'assets/images/profile.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(
              'Muhammad Umar',
              style: TextStyle(
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'I am a Flutter learner',
              style: TextStyle(fontSize: 17, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
