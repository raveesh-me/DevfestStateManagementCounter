import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  final String appName = 'State Management';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appName),
        ),
        body: Center(
          child: FlatButton(
            child: Text(
              'All the best for a perfect Session, \nJai Maata Di',
              style:
                  Theme.of(context).textTheme.display4.copyWith(fontSize: 30.0),
            ),
            onPressed: () {
//              sayHi(context);
            },
          ),
        ),
      ),
    );
  }

  sayHi(BuildContext context) {
    Scaffold.of(context).showSnackBar(SnackBar(content: Text('Hi!')));
  }
}
