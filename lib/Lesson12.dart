import 'package:flutter/material.dart';

class Lesson12 extends StatefulWidget {
  @override
  State<Lesson12> createState() => _Lesson12State();
}

class _Lesson12State extends State<Lesson12> {
  final TextEditingController _controller = TextEditingController();
  String Livetext = "";
  Color col = Colors.red;
  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        Livetext = _controller.text;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    void controlecolor() {}
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              Livetext.isEmpty ? "Write Something" : Livetext,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Livetext.length >= 5 ? Colors.green : Colors.red,
              ),
            ),
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                hintText: 'Type Something',
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
