import 'package:flutter/material.dart';

class Lesson11 extends StatefulWidget {
  @override
  State<Lesson11> createState() => _Lesson11State();
}

class _Lesson11State extends State<Lesson11> {
  final TextEditingController _controller = TextEditingController();
  Color col = Colors.green;
  String name = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: col,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Input Your name',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            SizedBox(height: 30),
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                hintText: "eg. Jhon Doe",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  name = _controller.text;
                  name.isEmpty ? col = Colors.red : col = Colors.green;
                });
              },
              child: Text(
                'Show',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
            SizedBox(height: 20),
            Text(
              name.isEmpty ? "Nothing to show" : "Hello $name",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
