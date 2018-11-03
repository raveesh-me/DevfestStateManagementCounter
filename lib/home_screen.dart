import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final String appName;
  final int counter;
  final Function(int) setCounter;

  const HomeScreen({Key key, this.appName, this.counter, this.setCounter})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setCounter(counter + 1);
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Text(appName),
      ),
      body: Center(
        child: Text('$counter'),
      ),
    );
  }
}
