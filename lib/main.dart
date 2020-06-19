import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

// dart programming language

void main() => runApp(MyClass());

class MyClass extends StatefulWidget {
  @override
  _MyClassState createState() => _MyClassState();
}

class _MyClassState extends State<MyClass> {
  int questionIndex = 0;
  int score = 0;

  var questions = [
    {
      'questText': 'What\'s your favourite color?',
      'anwsers': [
        {'text': 'Red', 'score': 4},
        {'text': 'Green', 'score': 5},
        {'text': 'Blue', 'score': 9},
        {'text': 'Black', 'score': 3}
      ]
    },
    {
      'questText': 'What\'s your favourite animal?',
      'anwsers': [
        {'text': 'Cat', 'score': 6},
        {'text': 'Dog', 'score': 1},
        {'text': 'Rabbit', 'score': 6}
      ]
    },
  ];

  answerQuestion(int score) {
    setState(() {
      questionIndex = questionIndex + 1;
      this.score = this.score + score;
    });
    print(this.score);
  }

  resetQuestion() {
    setState(() {
      questionIndex = 0;
      score = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyApp',
      home: Scaffold(
          appBar: AppBar(
            title: Text('My App'),
          ),
          body: Container(
            child: questionIndex < questions.length
                ? Quiz(
                    questions: questions,
                    questionIndex: questionIndex,
                    answerQuestion: answerQuestion,
                  )
                : Result(
                    score: score,
                    resetQuestion: resetQuestion,
                  ),
            width: double.infinity,
            alignment: Alignment.topCenter,
          )),
    );
  }
}

/*
// print('sadifjioawejf');

  // var obj = MyClass(firstname: 'sdfsdfjoi', num1: 12);
  // obj.myFunction3(d: 2, a: 1, b: 4);
class MyClass {
  String firstname;
  int num1;
  List<String> x = ['a', 'b', 'c'];

  MyClass({this.firstname, this.num1}) {}

  int myFunction() {
    x.map((e)  {print(e);});
    return 2;
  }

  int myFunction1() => 2;

  myFunction3({int a, int b, int c, int d}) {}
}
*/
