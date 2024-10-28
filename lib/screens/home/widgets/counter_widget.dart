import 'package:flutter/material.dart';

class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key});

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int counterValue = 0;

  void updateCounter(int newValue) => setState(() => counterValue = newValue);

  void increment() => updateCounter(counterValue + 1);

  void decrement() => updateCounter(counterValue - 1);

  void multiplicationBy2() => updateCounter(counterValue * 2);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(50),
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 0),
        child: ListTile(
          title: Text(
            'Счетчик $counterValue',
            style: const TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton(
                onPressed: decrement,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                ),
                child: Container(
                  padding: const EdgeInsets.all(1),
                  child: const Text('-1'),
                )
              ),
              const SizedBox(width: 5, height: 52,),
              ElevatedButton(
                onPressed: increment,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                ),
                child: const Text('+1'),
              ),
              const SizedBox(width: 5,),
              ElevatedButton(
                onPressed: multiplicationBy2,
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                ),  
                child: const Text('x2'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}