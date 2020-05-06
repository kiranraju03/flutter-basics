import 'package:flutter/material.dart';

class Button extends StatelessWidget {

  final Function refClickFunc;
  final String textRecieved;

  Button(this.refClickFunc, this.textRecieved);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blueAccent,

        child: Text(textRecieved,
        style: TextStyle(fontSize: 20),),
        onPressed: refClickFunc,
      ),
    );
  }
}