import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _updateCounter() {
    setState(() {
      _counter = 0;
    });
  }

  void _removeCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Center(child: Text(widget.title)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Contador de clics en Flutter',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            backgroundColor: Colors.blue[900],
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            heroTag: null,
            child: const Icon(
                Icons.add, color: Colors.white,), // Añade esto para evitar conflictos con el hero tag
          ),
          const SizedBox(width: 16), // Espacio entre los botones
          FloatingActionButton(
            backgroundColor: Colors.blue[900],
            onPressed: _updateCounter,
            tooltip: 'Update',
            heroTag: null,
            child: const Icon(Icons
                .update, color: Colors.white,), // Añade esto para evitar conflictos con el hero tag
          ),
          const SizedBox(width: 16), // Espacio entre los botones
          FloatingActionButton(
            backgroundColor: Colors.blue[900],
            onPressed: _removeCounter,
            tooltip: 'Remove',
            heroTag: null,
            child: const Icon(Icons
                .remove, color: Colors.white,), // Añade esto para evitar conflictos con el hero tag
          ),
          const SizedBox(height: 30)
        ],
      ),
    );
  }
}
