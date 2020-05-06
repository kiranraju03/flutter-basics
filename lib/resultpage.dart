import 'package:flutter/material.dart';

import './centeredtext.dart';

class ResultPage extends StatelessWidget {
  final String greetMessage;
  final String techStack;
  final Function resetQuiz;

  ResultPage(this.greetMessage, this.techStack, this.resetQuiz);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CenteredText(greetMessage + techStack, 30),
        FlatButton(
          child: Text('Reset'),
          textColor: Colors.greenAccent,
          onPressed: resetQuiz,
        ),
      ],
    );
  }
}
