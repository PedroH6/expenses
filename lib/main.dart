import 'package:expenses/components/transaction_user.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(ExpensesApp());
}

class ExpensesApp extends StatelessWidget {
  const ExpensesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

// ignore: use_key_in_widget_constructors
class MyHomePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Despesas Pessois')),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // ignore: sized_box_for_whitespace
            Container(
              width: double.infinity,
              child: Card(elevation: 5, child: Text('Gráfico')),
            ),
            TransactionUser(),
          ],
        ),
      ),
    );
  }
}
