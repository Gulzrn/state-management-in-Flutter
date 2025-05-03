import 'package:flutter/material.dart';
import 'package:lab_8/provider/counter_provider.dart';
import 'package:provider/provider.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<CounterProvider>(context);
    final count = counter.count;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Page'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Text(
          'you preesed the button \n $count  times',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: counter.increment,
            child: const Icon(Icons.plus_one),
          ),
          const SizedBox(width: 20),
          FloatingActionButton(
            onPressed: counter.decrement,
            child: const Icon(Icons.exposure_minus_1),
          ),
          const SizedBox(width: 20),
          FloatingActionButton(
            onPressed: counter.reset,
            child: const Icon(Icons.replay),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
