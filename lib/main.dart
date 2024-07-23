import 'package:flutter/material.dart';
import 'package:roll_dice/expense_tracker/expenses.dart';
import 'package:roll_dice/meals/screens/categories.dart';
import 'package:roll_dice/quiz_app/quiz.dart';
import 'package:roll_dice/roll_dice/gradient_container.dart';
import 'package:google_fonts/google_fonts.dart';

final theme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: const Color.fromARGB(255, 131, 57, 0),
  ),
  textTheme: GoogleFonts.latoTextTheme(),
);

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

// Expense tracker
  // @override
  // Widget build(BuildContext context) {
  //   return const MaterialApp(home: Expenses());
  // }

// meals app
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      home: const Categories(),
    );
  }
}
