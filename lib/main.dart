import 'package:flutter/material.dart';

import './buttonslist.dart';
import './resultpage.dart';

//Entry point of the app
void main() {
  //Calls the constructor of the MyApp class which is a widget
  runApp(MyApp());
}

//MyApp responsible for re-rendering the widget component on change
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    //TODO: implement createState
    return _MyAppState();
  }
}

//State is a generic element, so specifying the type of state to be MyApp in the angular braces
//Below class is where the state of the element gets updated, and gets re-rendered using the statefulwidget
//So State generic has to be connected to the stateful widget, by overriding createstate

//Converting the MyAppState to a private class, to make it usable only inside main.dart file
class _MyAppState extends State<MyApp> {
  var _arrayIndexValue = 0;

  final _questionsList = [
    {
      'questionText': 'Fav Teck Stack?',
      'answers': ['Front-End', 'Back-End', 'Full-Stack'],
    },
    {
      'questionText': 'Fav Front-End Stack?',
      'answers': ['VanillaJS', 'ReactJS', 'Flutter'],
    },
    {
      'questionText': 'Fav Back-End Stack ?',
      'answers': ['Python', 'Java'],
    },
    {
      'questionText': 'Fav Full-Stack?',
      'answers': ['MERN', 'MEAN'],
    },
  ];

  String finalMessage = 'Your selected Values :  ';
  String comb = '';

  void _resetQuiz() {
    setState(() {
      _arrayIndexValue = 0;
      comb = '';
    });
  }

  void _clickedAction(String combineText) {
    //Setting the state of the arrayIndex, on which the re-render cycle will be triggered
    //The re-render happens by calling the below build method again.
    //So setstate has to be placed where the widget needs to be updated.
    comb += '\n' + combineText;

    setState(() {
      _arrayIndexValue += 1;
    });

    print('ClickAction Called');
  }

  //build method is called by flutter, which hold the metadata for building the app
  Widget build(BuildContext context) {
    //material app provides a app with some of the inbuilt widgets using named arguments
    //named arguments are used, as material app has numerous parameters that it accepts
    //here we are accessing only the home parameter to return on the app page
    return MaterialApp(
      //Scaffold is used to struture the various parts of the visible area
      home: Scaffold(
          //AppBar creates a top bar
          appBar: AppBar(
            title: Text('Tech Stack Survey'),
          ),
          //Body is the content area, and for rendering multiple elements, we use another widget, Row, Column etc
          //Column expects a list of widgets, which act as its children
          body: _arrayIndexValue < _questionsList.length
              ? ButtonsList(_questionsList, _arrayIndexValue, _clickedAction)
              : ResultPage(finalMessage, comb, _resetQuiz)),
    );
  }
}
