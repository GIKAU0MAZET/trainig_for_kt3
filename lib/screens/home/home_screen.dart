import 'package:flutter/material.dart';
import 'package:training_for_kt3/screens/home/widgets/counter_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Счетчик'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => const CounterWidget(),
        itemCount: 3,
      ),
    );
  }
}