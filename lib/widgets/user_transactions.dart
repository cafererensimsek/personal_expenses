import 'package:app_1/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:app_1/widgets/new_transactions.dart';
import '../widgets/transaction_list.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
    Transaction(
        id: 't1', title: 'New Shoes', amount: 69.99, date: DateTime.now()),
    Transaction(
        id: 't1', title: 'New Shoes', amount: 69.99, date: DateTime.now()),
    Transaction(
        id: 't1', title: 'New Shoes', amount: 69.99, date: DateTime.now()),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      NewTransaction(),
      TransactionList(),
    );
  }
}
