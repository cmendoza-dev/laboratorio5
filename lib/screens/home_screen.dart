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
            Text('Mendoza.Solis', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.redAccent[700])),
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FloatingActionButton(
            backgroundColor: Colors.orange[900],
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            heroTag: null,
            child: const Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 20), 
          FloatingActionButton(
            backgroundColor: Colors.purple[900],
            onPressed: _updateCounter,
            tooltip: 'Update',
            heroTag: null,
            child: const Icon(
              Icons.exposure_zero,
              color: Colors.white,
            ), 
          ),
          const SizedBox(width: 20), // Espacio entre los botones
          FloatingActionButton(
            backgroundColor: Colors.green[900],
            onPressed: _removeCounter,
            tooltip: 'Remove',
            heroTag: null,
            child: const Icon(
              Icons.remove,
              color: Colors.white,
            ), // 
          ),
          const SizedBox(height: 30)
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
