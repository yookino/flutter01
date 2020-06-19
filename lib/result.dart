import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({
    @required this.score,
    @required this.resetQuestion,
  });

  final int score;
  final Function resetQuestion;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text('Your score',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          )),
      Text('$score scores',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          )),
      RaisedButton(
          onPressed: () {
            resetQuestion();
          },
          child: Text('Reset'))
    ]);
  }
}
