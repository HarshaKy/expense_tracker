import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

const uuid = Uuid();
final dateFormat = DateFormat('dd/MM/yyyy');

enum Category {
  food,
  travel,
  leisure,
  work,
}

const categoryIcons = {
  Category.food: Icons.fastfood,
  Category.travel: Icons.flight_takeoff_rounded,
  Category.leisure: Icons.movie_filter_rounded,
  Category.work: Icons.work_rounded,
};

class Expense {
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid.v4();

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  String get formattedDate {
    return dateFormat.format(date);
  }
}
