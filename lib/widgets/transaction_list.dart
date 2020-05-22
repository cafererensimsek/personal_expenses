import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';



class TransactionList extends StatelessWidget {
final List<Transaction> transactions;

TransactionList(this.transactions);

@override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView(
        children: transactions.map((tx) {
          return Card(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Colors.black,
                    width: 2,
                  )),
                  padding: EdgeInsets.all(10),
                  child: Text(
                    '${tx.amount} ₺',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.purple,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(tx.title,
                        style:
                            TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    Text(DateFormat('dd MMM yyyy').format(tx.date),
                        style:
                            TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  ],
                )
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
