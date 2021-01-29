import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerFunc;
  final String optionText;
  // constructor for getting the callback function
  Answer(
    this.answerFunc,
    this.optionText,
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.red,
        textColor: Colors.white,
        child: Text(optionText),
        onPressed: answerFunc,
      ),
    );
  }
}
