import 'package:flutter/material.dart';

void main() {
  runApp(Quizzer());
}

class Quizzer extends StatelessWidget {
  const Quizzer({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black26,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 5,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Center(
                    child: Text(
                      "This is were the question text will go.",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: TextButton(onPressed: () {}, child: ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
