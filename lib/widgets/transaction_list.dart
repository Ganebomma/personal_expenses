import 'package:flutter/material.dart';
import 'package:personal_expenses/models/transaction.dart';
// import 'package:intl/intl.dart';
import './transaction_item.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  final Function deleteTx;
  TransactionList(this.transactions, this.deleteTx);
  @override
  Widget build(BuildContext context) {
    print('build() TransactionList');
    return Drawer(
        // height: MediaQuery.of(context).size.height * 0.9,
        child: transactions.isEmpty
            ? LayoutBuilder(builder: (ctx, constraints) {
                return Column(
                  children: <Widget>[
                    Text(
                      'No transaction added yet!',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    SizedBox(height: 20),
                    Container(
                      height: constraints.maxHeight * 0.6,
                      child: Image.asset(
                        'assets/image/waiting.png',
                        height: 100,
                      ),
                    ),
                  ],
                );
              })
            : ListView.builder(
                itemBuilder: (ctx, index) {
                  return new TransactionItem(
                    transaction: transactions[index],
                    deleteTx: deleteTx,
                  );
                },
                itemCount: transactions.length,
              ));
  }
}
