import 'package:flutter/material.dart';
import 'package:flutter_lesson/Lesson15_2.dart';

class Lesson15 extends StatefulWidget {
  @override
  State<Lesson15> createState() => _Lesson15State();
}

class _Lesson15State extends State<Lesson15> {
  final TextEditingController _controller = TextEditingController();

  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  String resultfromscreen2 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              resultfromscreen2,
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _controller,
                decoration: InputDecoration(
                  labelText: "Type Some Message",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                validator: (value) {
                  if (value == "") {
                    return "Please Type first";
                  }
                  return null;
                },
              ),
            ),

            ElevatedButton(
              onPressed: () async {
                if (!_controller.text.isEmpty) {
                  final result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Lesson152(data: _controller.text),
                    ),
                  );
                  if (result != null) {
                    setState(() {
                      resultfromscreen2 = result;
                    });
                  }
                }
              },
              child: Text(
                "Send",
                style: TextStyle(color: Colors.green, fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
