// ignore_for_file: deprecated_member_use, use_key_in_widget_constructors, curly_braces_in_flow_control_structures, prefer_const_constructors

import 'package:flutter/material.dart';
import 'result.dart';
import 'quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  final _questions = [
    {
      'questionText': 'Care este cea mai mare tara din lume?',
      'answer': [
        {'text': 'Anglia', 'score': 0},
        {'text': 'China', 'score': 0},
        {'text': 'Rusia', 'score': 1},
        {'text': 'India', 'score': 0},
      ],
    },
    {
      'questionText': 'Care este tara care are forma unei cizme?',
      'answer': [
        {'text': 'Franta', 'score': 0},
        {'text': 'Italia', 'score': 1},
        {'text': 'Romania', 'score': 0},
        {'text': 'Olanda', 'score': 0},
      ],
    },
    {
      'questionText': 'Care este cea mai populata tara de pe pamant?',
      'answer': [
        {'text': 'India', 'score': 0},
        {'text': 'Rusia', 'score': 0},
        {'text': 'USA', 'score': 0},
        {'text': 'China', 'score': 1},
      ],
    },
  ];
  void _answerQuestion(int score) {
    setState(() {
      _totalScore += score;
      _questionIndex += 1;
    });
  }

  void _restartQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Quiz game!',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
          ),
          backgroundColor: Colors.orangeAccent,
          shadowColor: Colors.red,
          elevation: 10,
        ),
        body: _questionIndex < _questions.length
            ? Quiz(_questions, _questionIndex, _answerQuestion)
            : Center(
                child: Result(_totalScore, _restartQuiz),
              ),
      ),
    );
  }
}
