import 'package:flutter/material.dart';
import 'package:my_dashboard/Models/transaction_model.dart';
import 'package:my_dashboard/Widgets/tarnsaction_history_items.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});
  static const List<TransactionHistoryModel> items = [
    TransactionHistoryModel(
        resiverName: "Michael Knight",
        type: "Electronics",
        date: "14 Dec 2020",
        money: r"$80.67"),
    TransactionHistoryModel(
        resiverName: "Jonathan Higgins",
        type: "Shopping",
        date: "14 Dec 2020",
        money: r"$1250.00"),
    TransactionHistoryModel(
        resiverName: "Willie Tanner",
        type: "Payment",
        date: "07 Dec 2020",
        money: r"$99.50"),
    TransactionHistoryModel(
        resiverName: "Murdock",
        type: "Sport",
        date: "06 Dec 2020",
        money: r"$5550"),
    TransactionHistoryModel(
        resiverName: "Theodore T.C. Calvin",
        type: "Shopping",
        date: "31 Nov 2020",
        money: r"$230"),
    TransactionHistoryModel(
        resiverName: "Michael Knight",
        type: "Electronics",
        date: "18 Dec 2020",
        money: r"$90.67"),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return TransactionHistoryItems(transactionHistoryModel: items[index]);
        });
  }
}
