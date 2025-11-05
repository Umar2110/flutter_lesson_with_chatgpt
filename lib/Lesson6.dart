import 'package:flutter/material.dart';

class Lesson6 extends StatelessWidget {
  const Lesson6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(height: 100, color: Colors.green),
          Expanded(
            flex: 1,
            child: Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,

                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.red,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),

                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.yellow,
                      ),
                      margin: EdgeInsets.symmetric(horizontal: 5),

                      width: 100,
                      height: 100,
                    ),
                  ),
                ],
              ),
            ),
          ),

          Container(height: 100, color: Colors.green),
        ],
      ),
    );
  }
}
