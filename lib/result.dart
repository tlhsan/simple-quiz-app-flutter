import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function restart;
  Result(this.resultScore, this.restart);
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Text(
          'Your Score is ' + resultScore.toString(),
          style: TextStyle(
            fontSize: 30,
          ),
          textAlign: TextAlign.center,
        ),
        RaisedButton(
          color: Colors.blue,
          textColor: Colors.white,
          child: Text('Restart Quiz'),
          onPressed: restart,
        ),
      ],
    ));
  }
}
