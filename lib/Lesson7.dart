import 'package:flutter/material.dart';

class Lesson7 extends StatelessWidget {
  const Lesson7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(height: 100, color: Colors.green),
          Expanded(child: Container(color: Colors.red)),
          Container(height: 100, color: Colors.blue),
        ],
      ),
    );
  }
}
