import 'package:flutter/material.dart';
import 'package:my_dashboard/Utils/app_style.dart';
import 'package:my_dashboard/Widgets/transaction_history_list_view.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(right: 40),
      color: const Color(0xffFFFFFF),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 4,
      child: AspectRatio(
        aspectRatio: 2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                ),
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    "Transaction History",
                    style: AppStyle.semiBold20(context),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                  children: [
                    Expanded(
                        child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        "Reciever",
                        style: AppStyle.regular14(context),
                      ),
                    )),
                    Expanded(
                        child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        "Type",
                        style: AppStyle.regular14(context),
                      ),
                    )),
                    Expanded(
                        child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        "date",
                        style: AppStyle.regular14(context),
                      ),
                    )),
                    Expanded(
                        child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        "Value",
                        style: AppStyle.regular14(context),
                      ),
                    )),
                  ],
                ),
              ),
            ),
            const Expanded(flex: 4, child: TransactionHistoryListView()),
          ],
        ),
      ),
    );
  }
}
