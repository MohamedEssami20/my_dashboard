import 'package:flutter/material.dart';
import 'package:my_dashboard/Models/transaction_model.dart';
import 'package:my_dashboard/Utils/app_style.dart';

class TransactionHistoryItems extends StatelessWidget {
  const TransactionHistoryItems({
    super.key,
    required this.transactionHistoryModel,
  });
  final TransactionHistoryModel transactionHistoryModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: Align(
            alignment: Alignment.centerLeft,
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                transactionHistoryModel.resiverName,
                style: AppStyle.regular14(context)
                    .copyWith(color: const Color(0xff404040)),
              ),
            ),
          )),
          Expanded(
              child: Align(
            alignment: Alignment.center,
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                transactionHistoryModel.type,
                style: AppStyle.regular14(context),
              ),
            ),
          )),
          Expanded(
              child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              transactionHistoryModel.date,
              style: AppStyle.regular14(context),
            ),
          )),
          Expanded(
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(transactionHistoryModel.money,
                  style: AppStyle.regular14(context)
                      .copyWith(color: const Color(0xff404040))),
            ),
          ),
        ],
      ),
    );
  }
}
