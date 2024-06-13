import 'package:flutter/material.dart';

// Einfache Counter-App
class CounterApp extends StatelessWidget {
  const CounterApp({super.key}); // Super-Parameter verwendet

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CounterScreen(), // const Konstruktor verwendet
    );
  }
}

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key}); // Super-Parameter verwendet

  @override
  State<CounterScreen> createState() => _CounterScreenState(); // Rückgabe des State-Objekts
}

// Zustand des Counter-Screens
class _CounterScreenState extends State<CounterScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              key: const Key('counter'),
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
