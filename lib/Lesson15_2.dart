import 'package:flutter/material.dart';

class Lesson152 extends StatelessWidget {
  final String data;
  Lesson152({super.key, required this.data});

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(data, style: TextStyle(color: Colors.black, fontSize: 40)),
            SizedBox(height: 20),
            TextFormField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'Type something....',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please add some value first";
                }
                return null;
              },
            ),

            ElevatedButton(
              onPressed: () {
                void data2 = Navigator.pop(context, _controller.text);
              },
              child: Text(
                'Send',
                style: TextStyle(fontSize: 20, color: Colors.red),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
