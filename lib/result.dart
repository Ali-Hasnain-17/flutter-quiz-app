import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;

  Result(this.score);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Yours Score is " + score.toString(),
        style: TextStyle(
          fontSize: 30.0,
        ),
      ),
    );
  }
}
