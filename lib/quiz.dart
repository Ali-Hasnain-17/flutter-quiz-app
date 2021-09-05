import 'package:flutter/material.dart';

import './question.dart';
import './answers.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int index;
  final Function answerQuestion;

  Quiz(
    {
      @required this.questions, 
      @required this.index, 
      @required this.answerQuestion
    }
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questions[index]["question"]),
        ...(questions[index]["answers"] as List<String>)
            .map((answer) => Answer(answer, () => answerQuestion(answer, index)))
            .toList(),
      ],
    );
  }
}
