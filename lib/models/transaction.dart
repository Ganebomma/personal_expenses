import 'package:flutter/foundation.dart';

class Transaction {
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  // final bool isMyFav;

  Transaction({
    @required this.id,
    @required this.title,
    @required this.amount,
    @required this.date,
    // @required this.isMyFav,
  });
}