import 'package:flutter/material.dart';
import 'package:my_dashboard/Widgets/all_expenses_list_view.dart';
import 'package:my_dashboard/Widgets/investment_and_income_section.dart';
import 'package:my_dashboard/Widgets/money_pay.dart';
import 'package:my_dashboard/Widgets/my_card_and_transaction_history.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
              slivers: [
    SliverToBoxAdapter(
      child: SizedBox(
        height: 20,
      ),
    ),
    SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.only(left: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            MoneyPay(),
          ],
        ),
      ),
    ),
    SliverToBoxAdapter(
      child: SizedBox(
        height: 20,
      ),
    ),
    SliverToBoxAdapter(
      child: AllExpensesListView(),
    ),
    SliverToBoxAdapter(
      child: SizedBox(
        height: 20,
      ),
    ),
    SliverToBoxAdapter(
      child: MyCardAndTransactionHistory(),
    ),
    SliverToBoxAdapter(
      child: SizedBox(
        height: 20,
      ),
    ),
    SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.only(left: 20, right: 10),
        child: InvestmentAndIncomeSection(),
      ),
    )
              ],
            );
  }
}
