import 'package:flutter/material.dart';

// dart programming language

void main() => runApp(MyClass());

class MyClass extends StatefulWidget {
  @override
  _MyClassState createState() => _MyClassState();
}

class _MyClassState extends State<MyClass> {
  int questionIndex = 0;

  var questions = [
    {
      'questText': 'What\'s your favourite color?',
      'anwsers': ['Red', 'Green', 'Blue', 'Black']
    },
    {
      'questText': 'What\'s your favourite animal?',
      'anwsers': ['Cat', 'Dog', 'Rabbit']
    },
  ];

  answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
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
            child: Column(
              children: [
                Text(
                  questions[questionIndex]['questText'],
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ...(questions[questionIndex]['anwsers'] as List<String>)
                    .map((text) {
                  return Container(
                    child: RaisedButton(
                      onPressed: answerQuestion,
                      child: Text(text),
                      color: Colors.blue,
                      textColor: Colors.white,
                    ),
                    width: double.infinity,
                    margin: EdgeInsets.only(left: 10, right: 10),
                  );
                }),
              ],
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
