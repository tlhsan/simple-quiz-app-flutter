import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final Function answerChosen;
  final int questionIndex;
  final List<Map<String, Object>> questions;

  // Constructor
  Quiz(
      {@required this.answerChosen,
      @required this.questions,
      @required this.questionIndex});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['question'],
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              // this anonymous () func will allow to execute score in the main
              () => answerChosen(answer['score']),
              answer['answerText']);
        }).toList()
      ],
    );
  }
}
