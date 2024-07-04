import 'package:flutter/material.dart';
import 'package:my_dashboard/Models/all_expenses_items_model.dart';
import 'package:my_dashboard/Widgets/active_and_inactive_tarnsaction_items.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key, required this.isActive, required this.allExpensesItemsModel});
  final bool isActive;
  final AllExpensesItemsModel allExpensesItemsModel;
  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
        firstChild: ActiveTransactionItems(allExpensesItemsModel: allExpensesItemsModel,),
        secondChild: InActiveTransactionItems(allExpensesItemsModel: allExpensesItemsModel,),
        crossFadeState: isActive==true?CrossFadeState.showFirst:CrossFadeState.showSecond,
        duration: const Duration(microseconds: 300),
        firstCurve: Curves.linear,
        secondCurve: Curves.bounceInOut,
        );
  }
}
