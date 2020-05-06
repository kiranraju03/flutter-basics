import 'package:flutter/material.dart';

import './qname.dart';
import './buttons.dart';

class ButtonsList extends StatelessWidget {
  final int arrayIndexValue;
  final Function clickedAction;
  final List<Map<String, Object>> questionsList;

  ButtonsList(this.questionsList, this.arrayIndexValue, this.clickedAction);

  @override
  Widget build(BuildContext context) {
    List mappy = (questionsList[arrayIndexValue]['answers'] as List<String>);
    return Column(
      children: [
        QName(questionsList[arrayIndexValue]['questionText']),
        //A button which is disabled
        ...(questionsList[arrayIndexValue]['answers'] as List<String>)
            .map((answer) {
          return Button(() => clickedAction(answer), answer);
        }).toList(),
      ],
    );
  }
}
