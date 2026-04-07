import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: LayoutApp(),
      ),
    );
  }
}

class LayoutApp extends StatelessWidget {
  const LayoutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      // Task 3: Add Padding around widgets
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('I\'m in a Coloum and Centered. The below is a row.'),
          const SizedBox(height: 20),
          Row(
            // Task 1: Change Row alignment to center
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Task 4: Replace loop with manual Containers
              Container(width: 100, height: 100, color: Colors.red),
              Container(width: 100, height: 100, color: Colors.green),
              Container(width: 100, height: 100, color: Colors.blue),
            ],
          ),
          const SizedBox(height: 20),
          Stack(
            // Task 2: Change Stack alignment to topLeft
            alignment: Alignment.topLeft,
            children: [
              Container(
                width: 300,
                height: 200,
                color: Colors.yellow,
              ),
              const Text(
                'Stacked on Yellow Box',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}