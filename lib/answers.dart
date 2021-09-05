import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerQuestion;
  final String answer;

  Answer(this.answer, this.answerQuestion);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10.0),
      child: ElevatedButton(
        onPressed: answerQuestion,
        child: Text(
          answer,
          style: TextStyle(
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }
}
