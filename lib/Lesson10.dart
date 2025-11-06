import 'package:flutter/material.dart';

class Lesson10 extends StatefulWidget {
  @override
  State<Lesson10> createState() => _Lesson10State();
}

class _Lesson10State extends State<Lesson10> {
  String state = "Neutral";
  String increase = "increase";
  String decrease = "decrease";
  int value = 0;
  @override
  Widget build(BuildContext context) {
    void updatestate() {
      if (value > 0) {
        state = "Number Increase";
      } else if (value < 0) {
        state = "Number Deacreased";
      } else {
        state = "Neutral";
      }
    }

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            state,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 20),
          Text(
            value.toString(),
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    value++;
                    updatestate();
                  });
                },
                child: Text(
                  'Increase',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      value--;
                      updatestate();
                    });
                  },
                  child: Text(
                    'Decrease',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                value = 0;
                updatestate();
              });
            },
            child: Text(
              'Reset',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
