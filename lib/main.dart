import 'package:flutter/material.dart';

//Entry point of the app
void main() {
  //Calls the constructor of the MyApp class which is a widget
  runApp(MyApp());
}

//StatelessWidget is a base class for creating own widgets
class MyApp extends StatelessWidget {
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
            title: Text('First App'),
          ),
          //Body is the content area, and for rendering multiple elements, we use another widget, Row, Column etc
          //Column expects a list of widgets, which act as its children
          body: Column(
            children: [
              Text('Hello! Kiran'),
              //A button which is disabled
              RaisedButton(
                child: Text('Button1'),
                onPressed: null,
              ),
              RaisedButton(
                child: Text('Button2'),
                onPressed: null,
              )
            ],
          )),
    );
  }
}
