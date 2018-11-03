import 'package:flutter/material.dart';
import 'package:state_management_counter_app/home_screen.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  String appName = 'State Management';
  int counter;

  @override
  void initState() {
    super.initState();
    counter = 0;
  }

  setCounter(int newCounter) {
    setState(() {
      counter = newCounter;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      home: HomeScreen(
        appName: appName,
        counter: counter,
        setCounter: setCounter,
      ),
    );
  }
}
