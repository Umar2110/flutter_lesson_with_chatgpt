import 'package:flutter/material.dart';

class Lesson13 extends StatefulWidget {
  @override
  State<Lesson13> createState() => _Lesson13State();
}

class _Lesson13State extends State<Lesson13> {
  final TextEditingController _firstController = TextEditingController();
  final TextEditingController _lastController = TextEditingController();

  String fullName = "";

  @override
  void initState() {
    super.initState();
    _firstController.addListener(_updateFullName);
    _lastController.addListener(_updateFullName);
  }

  void _updateFullName() {
    setState(() {
      fullName = "${_firstController.text} ${_lastController.text}".trim();
    });
  }

  @override
  void dispose() {
    _firstController.dispose();
    _lastController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                fullName.isEmpty ? "Enter your full name" : "Hello, $fullName!",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: fullName.isEmpty
                      ? Colors.red
                      : (fullName.length >= 6 ? Colors.green : Colors.orange),
                ),
              ),
              SizedBox(height: 30),
              TextField(
                controller: _firstController,
                decoration: InputDecoration(
                  labelText: "First Name",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _lastController,
                decoration: InputDecoration(
                  labelText: "Last Name",
                  border: OutlineInputBorder(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
