// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CounterFunctionScreen extends StatefulWidget {
  const CounterFunctionScreen({super.key});

  @override
  State<CounterFunctionScreen> createState() => _CounterFunctionScreenState();
}

class _CounterFunctionScreenState extends State<CounterFunctionScreen> {
  // ignore: non_constant_identifier_names
  int Counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
        leading:
            IconButton(onPressed: () {}, icon: const Icon(Icons.refresh_sharp)),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.refresh_rounded))
        ],
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Counter', style: TextStyle(fontSize: 30)),
          Text(
            '$Counter',
            style: const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
          ),
          Text(
            'Click${Counter == 1 ? '' : 's'}',
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ],
      )),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatButtons(
              onPressed: () {
                setState(() {
                  Counter = 0;
                });
              },
              icon: Icons.refresh),
              const SizedBox(height: 10),
              FloatButtons(
              onPressed: () {
                setState(() {
                  Counter++;
                });
              },
              icon: Icons.plus_one),
              const SizedBox(height: 10),
              FloatButtons(
              onPressed: () {
                if (Counter == 0) return;
                setState(() {
                  Counter--;
                });
              },
              icon: Icons.exposure_minus_1)
        ],
      ),
    );
  }
}

class FloatButtons extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  const FloatButtons({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        shape: const StadiumBorder(), onPressed: onPressed, child: Icon(icon));
  }
}
