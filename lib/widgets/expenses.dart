import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/expenses_list/expenses_list.dart';

import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _expenses = [
    Expense(
      title: 'Flutter Course',
      amount: 9.99,
      date: DateTime.now(),
      category: Category.work,
    ),
    Expense(
      title: 'New Shoes',
      amount: 99.99,
      date: DateTime.now(),
      category: Category.leisure,
    ),
    Expense(
      title: 'Weekly Groceries',
      amount: 49.99,
      date: DateTime.now(),
      category: Category.food,
    ),
  ];

  @override
  Widget build(context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('The chart'),
          Expanded(
            child: ExpensesList(
              expenses: _expenses,
            ),
          ),
        ],
      ),
    );
  }
}
