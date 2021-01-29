import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

// main class which holds the main widget goes here
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  // a list of dictionaries/maps containing ques&ans
  final _questions = const [
    {
      'question': 'Who gets really mad when you say "Horr hoyi ges"?',
      'answers': [
        {
          'answerText': 'Sokina',
          'score': 0,
        },
        {
          'answerText': 'Kausar',
          'score': 0,
        },
        {
          'answerText': 'Fokhrul er nani',
          'score': 1,
        },
      ],
    },
    {
      'question': 'Who is not a brother of Golam Nobi?',
      'answers': [
        {
          'answerText': 'Kibliya Merchant',
          'score': 0,
        },
        {
          'answerText': 'Joshim',
          'score': 1,
        },
        {
          'answerText': 'Kobir Master',
          'score': 0,
        },
      ],
    },
    {
      'question': 'What is the other name of baaar bari?',
      'answers': [
        {
          'answerText': 'Oii bari',
          'score': 1,
        },
        {
          'answerText': 'Oshini Bari',
          'score': 0,
        },
        {
          'answerText': 'uttor Bari',
          'score': 0,
        },
      ],
    },
  ];
  // var for question index, '_' at the front means private property
  var _questionIndex = 0;
  // To calculate the total score
  var _totalScore = 0;

  // Restart Method
  void _restart() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  // method for answer choosing buttons
  void _answerChosen(int score) {
    _totalScore += score;
    setState(() {
      // update question index, every time an answer is pressed
      _questionIndex = _questionIndex + 1;
      if (_questionIndex < _questions.length) {
        print('We got questions');
      } else {
        print('no more questions left');
      }
    });
    // update question index, every time an answer is pressed
    //questionIndex = questionIndex + 1;
    //if (questionIndex > 2) {
    // questionIndex = 0;
    // }
    print('Answer chosen!');
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('MSB Quiz'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerChosen: _answerChosen,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _restart),
      ),
    );
  }
}
