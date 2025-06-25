import 'package:uuid/uuid.dart';
import 'package:expenses/model/transaction.dart';
import 'package:flutter/material.dart';
import 'transaction_list.dart';
import 'transaction_form.dart';

class TransactionUser extends StatefulWidget {
  const TransactionUser({super.key});

  @override
  State<TransactionUser> createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  final _transaction = [
    Transaction(
      id: "t1",
      title: "Novo Tenis de Corrida",
      value: 310.76,
      date: DateTime.now(),
    ),
    Transaction(
      id: "t2",
      title: "Conta de Luz",
      value: 211.30,
      date: DateTime.now(),
    ),
  ];

  _addTransaction(String title, double value) {
    final newTransaction = Transaction(
      id: Uuid().v4(),
      title: title,
      value: value,
      date: DateTime.now(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [TransactionList(_transaction), TransactionForm()]);
  }
}
