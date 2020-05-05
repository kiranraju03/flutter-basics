import 'package:flutter/material.dart';

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
    return MyAppState();
  }
}

//State is a generic element, so specifying the type of state to be MyApp in the angular braces
//Below class is where the state of the element gets updated, and gets re-rendered using the statefulwidget
//So State generic has to be connected to the stateful widget, by overriding createstate
class MyAppState extends State<MyApp> {
  var arrayIndexValue = 0;

  void clickedAction() {
    //Setting the state of the arrayIndex, on which the re-render cycle willl be triggered
    setState(() {
      arrayIndexValue = arrayIndexValue + 1;
    });
    print('ClickAction Called');
  }

  //build method is called by flutter, which hold the metadata for building the app
  Widget build(BuildContext context) {
    var arrayValues = ['Kiran Raju', 'Kiran Raju Krishna'];
    //Function call done from clicking 1st button

    //material app provides a app with some of the inbuilt widgets using named arguments
    //named arguments are used, as material app has numerous parameters that it accepts
    //here we are accessing only the home parameter to return on the app page
    return MaterialApp(
      //Scaffold is used to struture the various parts of the visible area
      home: Scaffold(
          //AppBar creates a top bar
          appBar: AppBar(
            title: Text('First App'),
          ),
          //Body is the content area, and for rendering multiple elements, we use another widget, Row, Column etc
          //Column expects a list of widgets, which act as its children
          body: Column(
            children: [
              Text(arrayValues[arrayIndexValue]),
              //A button which is disabled
              RaisedButton(
                child: Text('Button1'),
                onPressed: clickedAction,
              ),
              RaisedButton(
                child: Text('Button2'),
                //Creating anonymous function
                onPressed: () => print('Second button clicked'),
              )
            ],
          )),
    );
  }
}
