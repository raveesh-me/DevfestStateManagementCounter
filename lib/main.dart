import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter;

  @override
  void initState() {
    super.initState();
    _counter = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            //TODO 1:  Counter andar bahar && upar neeche
          });

          _counter++;
        },
        child: Icon(Icons.add),
      ),
      body: Center(
        child: Text(
          '$_counter',
          style: Theme.of(context).textTheme.display3,
        ),
      ),
    );
  }
}
