import 'package:flutter/material.dart';
import 'counter_screen.dart';
import 'second_screen.dart';


class CounterApp extends StatefulWidget {
  @override
  _CounterAppState createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CounterScreen(
        counter: _counter,
        onPressed: _incrementCounter,
      ),
      routes: {
        '/second': (context) => SecondScreen(
          counter: _counter,
          onPressed: _incrementCounter,
        ),
      },
    );
  }
}
