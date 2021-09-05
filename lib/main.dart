import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(QuizApp());

class QuizApp extends StatefulWidget {
  @override
  _QuizAppState createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  final _questions = [
    {
      "question": "Which of the following is not programming language?",
      "answers": ["Dart", "Java", "Swift", "Coffee"],
      "correctAnswer": "Coffee",
    },
    {
      "question": "How many layers are there in OSI model?",
      "answers": ["5", "7", "9", "11"],
      "correctAnswer": "7",
    },
    {
      "question":
          "Which of the following language is used for IOS development?",
      "answers": ["Dart", "Swift", "Objective C", "All of the above"],
      "correctAnswer": "All of the above",
    },
  ];
  int _index = 0;
  int _score = 0;

  void answerQuestion(selectedAnswer, index) {
    var correctAnswer = _questions[index]["correctAnswer"];

    if (selectedAnswer == correctAnswer) {
      _score += 5;
    }
    
    setState(() {
      _index += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
          centerTitle: true,
          backgroundColor: Colors.blue[700],
        ),
        body: _index < _questions.length
            ? Quiz(
                index: _index,
                questions: _questions,
                answerQuestion: answerQuestion)
            : Result(_score),
      ),
    );
  }
}
