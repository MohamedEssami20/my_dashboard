import 'package:flutter/material.dart';
import 'package:my_dashboard/Utils/size_config.dart';
import 'package:my_dashboard/Widgets/my_card.dart';
import 'package:my_dashboard/Widgets/transaction_history.dart';

class MyCardAndTransactionHistory extends StatelessWidget {
  const MyCardAndTransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return width < SizeConfig.desktopSize
        ? ConstrainedBox(
            constraints: const BoxConstraints(maxHeight: 660),
            child: const Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                    flex: 2,
                    child: Padding(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: MyCard(),
                    )),
                Expanded(
                    flex: 2,
                    child: Padding(
                      padding: EdgeInsets.only(top: 30, left: 20),
                      child: TransactionHistory(),
                    )),
              ],
            ),
          )
        : const Row(
            children: [
              Expanded(child: MyCard()),
              SizedBox(
                width: 60,
              ),
              Expanded(child: TransactionHistory()),
            ],
          );
  }
}
