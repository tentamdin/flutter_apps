import 'package:flutter/material.dart';
import 'package:roll_dice/expense_tracker/expenses.dart';
import 'package:roll_dice/quiz_app/quiz.dart';
import 'package:roll_dice/roll_dice/gradient_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  // for roll dice
  // @override
  // Widget build(BuildContext context) {
  //   return const MaterialApp(
  //       home: Scaffold(
  //     backgroundColor: Colors.blueGrey,
  //     body: GradientContainer(),
  //   ));
  // }

// for quiz app
  // @override
  // Widget build(BuildContext context) {
  //   return const MaterialApp(home: Quiz());
  // }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Expenses());
  }
}
