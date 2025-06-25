import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../Model/expense_model.dart';

class expenseTracker extends StatefulWidget {
  const expenseTracker({super.key});

  @override
  State<expenseTracker> createState() => _expenseTrackerState();
}

class _expenseTrackerState extends State<expenseTracker> {
  final List<String> categories = [
    'Food',
    'Transport',
    'Entertainment',
    'Bills',
  ];
  final List<Expense> _expense = [];
  double total = 0.0;

  void _showform() {
    String selectedCategory = categories.first;
    TextEditingController titleController = TextEditingController();
    TextEditingController amountController = TextEditingController();
    DateTime expenseDateTime = DateTime.now();
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.only(
            left: 16,
            right: 16,
            top: 16,
            bottom: 16,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                style: TextStyle(color: Colors.black),
                controller: titleController,
                decoration: InputDecoration(labelText: 'Title'),
              ),
              SizedBox(height: 10),
              TextField(
                style: TextStyle(color: Colors.black),
                controller: amountController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Amount'),
              ),
              SizedBox(height: 10),
              DropdownButtonFormField(
                items:
                    categories
                        .map(
                          (category) => DropdownMenuItem(
                            value: category,
                            child: Text(category),
                          ),
                        )
                        .toList(),
                onChanged: (value) => selectedCategory = value!,
                decoration: InputDecoration(labelText: 'Select any one'),
                style: TextStyle(color: Colors.black),
              ),

              SizedBox(height: 20),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (titleController.text.isNotEmpty ||
                        double.tryParse(amountController.text) != null) {
                      _addExpense(
                        titleController.text,
                        double.parse(amountController.text.trim()),
                        expenseDateTime,
                        selectedCategory,
                      );
                      Navigator.pop(context);
                    }
                  },
                  child: Text('Add Experiance'),
                ),
              ),
              SizedBox(height: 7),
            ],
          ),
        );
      },
    );
  }

  void _addExpense(
    String title,
    double amount,
    DateTime date,
    String category,
  ) {
    setState(() {
      _expense.add(
        Expense(title: title, amount: amount, date: date, category: category),
      );
      total += amount;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expense Tracker'),
        actions: [
          IconButton(onPressed: () => _showform(), icon: Icon(Icons.add)),
        ],
      ),

      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Card(
                color: Colors.orange,
                margin: EdgeInsets.all(20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 100,
                    right: 100,
                    top: 50,
                    bottom: 50,
                  ),
                  child: Text(
                    'Total: ৳$total',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),

            Expanded(
              child: ListView.builder(
                itemCount: _expense.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.blueAccent,
                        child: Text(_expense[index].category),
                      ),
                      title: Text(_expense[index].title),
                      subtitle: Text(
                        DateFormat.yMMMd().format(_expense[index].date),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () => _showform(),
        child: Icon(Icons.add),
      ),
    );
  }
}
