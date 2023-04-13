import 'package:flutter/material.dart';

void main() {
  runApp(Quizzer());
}

class Quizzer extends StatefulWidget {
  const Quizzer({Key? key}) : super(key: key);

  @override
  State<Quizzer> createState() => _QuizzerState();
}

class _QuizzerState extends State<Quizzer> {
  List<Widget> scorekeeper = [];
  void checkAnswer(bool userPickAnswer) {
    bool correctAnswer = answer[questionnumber];

    if (userPickAnswer == correctAnswer) {
      scorekeeper.add(Icon(
        Icons.check,
        color: Colors.green,
      ));
    } else {
      scorekeeper.add(Icon(
        Icons.close,
        color: Colors.red,
      ));
    }
    setState(() {
      questionnumber++;
    });
  }

  List<String> question = [
    'you can lead cow down stairs but not up.',
    'Approximately one quarter of human bones are in the feet.',
    'A slug\'s blood is green',
  ];

  List<bool> answer = [false, true, true];

  int questionnumber = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black54,
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                flex: 5,
                child: Padding(
                  padding: EdgeInsets.only(top: 80),
                  child: Center(
                    child: Text(
                      question[questionnumber],
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  child: TextButton(
                    onPressed: () {
                      checkAnswer(true);
                    },
                    child: Center(
                      child: Text(
                        "YES",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  color: Colors.green,
                  height: 10,
                  width: 400,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                flex: 1,
                child: Container(
                  child: TextButton(
                    onPressed: () {
                      checkAnswer(false);
                    },
                    child: Center(
                      child: Text(
                        "NO",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  color: Colors.red,
                  height: 10,
                  width: 400,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: scorekeeper,
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
