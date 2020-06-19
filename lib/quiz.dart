import 'package:flutter/material.dart';

class Quiz extends StatelessWidget {
  const Quiz({
    @required this.questions,
    @required this.questionIndex,
    @required this.answerQuestion
  }) ;

  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Text(
            questions[questionIndex]['questText'],
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          ...(questions[questionIndex]['anwsers']
                  as List<Map<String, Object>>)
              .map((answer) {
            return Container(
              child: RaisedButton(
                onPressed: () {
                  answerQuestion(answer['score']);
                },
                child: Text(answer['text']),
                color: Colors.blue,
                textColor: Colors.white,
              ),
              width: double.infinity,
              margin: EdgeInsets.only(left: 10, right: 10),
            );
          }),
        ],
      );
  }
}