import 'package:flutter/material.dart';


void main() {
  runApp(ExpensesApp());
}


class ExpensesApp extends StatelessWidget {
  const ExpensesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Despesas Pessois'),
      ),
      body: Column(
        children: [
          // ignore: sized_box_for_whitespace
          Container(
            width: double.infinity,
            child: Card(elevation: 5, child: Text('Gráfico')),
          ),
          Card(child: Text('Lista de Transações')),
        ],
      )
    );
  }
}