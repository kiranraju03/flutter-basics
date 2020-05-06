import 'package:flutter/material.dart';

class CenteredText extends StatelessWidget {
  final String showText;
  final double textSize;

  CenteredText(this.showText, this.textSize);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        showText,
        style: TextStyle(fontSize: textSize),
      ),
    );
  }
}
