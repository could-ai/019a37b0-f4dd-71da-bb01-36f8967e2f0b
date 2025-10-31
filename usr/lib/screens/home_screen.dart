import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:couldai_user_app/models/expense.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Expense> _expenses = [
    Expense(id: 'e1', description: 'Café', amount: 5.50, date: DateTime.now().subtract(const Duration(days: 1))),
    Expense(id: 'e2', description: 'Almoço', amount: 25.00, date: DateTime.now().subtract(const Duration(days: 1))),
    Expense(id: 'e3', description: 'Gasolina', amount: 150.00, date: DateTime.now().subtract(const Duration(days: 2))),
    Expense(id: 'e4', description: 'Supermercado', amount: 350.75, date: DateTime.now().subtract(const Duration(days: 3))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Despesas Recentes'),
      ),
      body: _expenses.isEmpty
          ? const Center(child: Text('Nenhuma despesa registrada.'))
          : ListView.builder(
              itemCount: _expenses.length,
              itemBuilder: (ctx, index) {
                final expense = _expenses[index];
                return Card(
                  margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Text('R\$${expense.amount.toStringAsFixed(2)}'),
                    ),
                    title: Text(expense.description),
                    subtitle: Text(DateFormat('d MMM y').format(expense.date)),
                  ),
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Lógica para adicionar nova despesa
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
