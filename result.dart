// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback restartQuiz;
  Result(this.resultScore, this.restartQuiz);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            'Ai raspund la  $resultScore/3 intrebari corect',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          FlatButton(
            onPressed: restartQuiz,
            child: Text(
              "Restart",
            ),
            textColor: Colors.red,
          )
        ],
      ),
    );
  }
}
