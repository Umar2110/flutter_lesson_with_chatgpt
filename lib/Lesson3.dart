import 'package:flutter/material.dart';

class LessonThird extends StatefulWidget {
  const LessonThird({super.key});

  @override
  State<LessonThird> createState() => _LessonThirdState();
}

class _LessonThirdState extends State<LessonThird> {
  String taxt2 = "Press Me";
  String taxt = "Flutter Lesson 3 Challange";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Center(child: Text('Lesson 3 sl and sf'))),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(taxt, style: TextStyle(fontSize: 20)),
              ElevatedButton(
                onPressed: () {
                  taxt = "Flutter is amazing";
                  taxt2 = "Wooo Pressed";
                  setState(() {});
                },
                child: Text(taxt2),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
