import 'package:flutter/material.dart';
import 'package:expense_tracker/widgets/expenses.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(context) {
    return const MaterialApp(
      home: Expenses(),
    );
  }
}
