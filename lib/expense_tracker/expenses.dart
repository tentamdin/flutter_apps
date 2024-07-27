import 'package:flutter/material.dart';
import 'package:roll_dice/expense_tracker/models/expense.dart';
import 'package:roll_dice/expense_tracker/new_expense.dart';
import 'package:roll_dice/expense_tracker/widgets/chart/chart.dart';
import 'package:roll_dice/expense_tracker/widgets/expenses_list.dart';

class Expenses extends StatefulWidget {
  const Expenses({Key? key}) : super(key: key);

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _expensesList = [
    Expense(
        title: "Laptop",
        amount: 90000,
        date: DateTime.now(),
        category: Category.work),
    Expense(
        title: "Trip",
        amount: 50000,
        date: DateTime.now(),
        category: Category.travel)
  ];

  void _openModel() {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (ctx) => NewExpense(onAddExpense: _addExpense));
  }

  void _addExpense(Expense expense) {
    setState(() {
      _expensesList.add(expense);
    });
  }

  void _removeExpense(Expense expense) {
    final expenseIndex = _expensesList.indexOf(expense);
    setState(() {
      _expensesList.remove(expense);
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 3),
        content: const Text("Expense deleted"),
        action: SnackBarAction(
            label: "Undo",
            onPressed: () {
              setState(() {
                _expensesList.insert(expenseIndex, expense);
              });
            }),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget content = const Center(
      child: Text(
        "No expense found",
      ),
    );

    if (_expensesList.isNotEmpty) {
      content = Column(children: [
        Chart(expenses: _expensesList),
        Expanded(
            child: ExpensesList(
          expenses: _expensesList,
          onRemoveExpense: _removeExpense,
        ))
      ]);
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Expense Tracker"),
        actions: [
          IconButton(onPressed: _openModel, icon: const Icon(Icons.add))
        ],
      ),
      body: content,
    );
  }
}
