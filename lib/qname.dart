import 'package:flutter/material.dart';

//A statelesswidget is a immutable object meaning,once the object is created no changes should be made
//the property showName is made final, so that no changes can be made to it once the objected is created with a value
//Making it immutable
class QName extends StatelessWidget {
  final String showName;

  QName(this.showName);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(15),
      child:
        Text(showName,
        style: TextStyle(fontSize: 25),
        textAlign: TextAlign.center,
        ),
    );
  }
}