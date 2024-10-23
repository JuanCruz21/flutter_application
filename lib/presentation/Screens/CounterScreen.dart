// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  // ignore: non_constant_identifier_names
  int Counter = 0;
  String Clicks = 'Click';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            Clicks,
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      Counter++;
                      if (Counter <= 0) {
                        return;
                      } else if (Counter == 1) {
                        Clicks = 'Click';
                      } else {
                        Clicks = 'Clicks';
                      }
                    });
                  },
                  child: const Text('+')),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (Counter <= 0) {
                        return;
                      } else if (Counter == 1) {
                        Clicks = 'Click';
                      } else {
                        Clicks = 'Clicks';
                      }
                      Counter--;
                    });
                  },
                  child: const Text('-')),
            ],
          )
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            Counter++;
            if (Counter <= 0) {
              return;
            } else if (Counter == 1) {
              Clicks = 'Click';
            } else {
              Clicks = 'Clicks';
            }
          });
        },
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}
