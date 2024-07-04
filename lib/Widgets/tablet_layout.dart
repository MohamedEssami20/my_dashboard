import 'package:flutter/material.dart';
import 'package:my_dashboard/Widgets/all_expenses_list_view.dart';
import 'package:my_dashboard/Widgets/custom_drawer.dart';
import 'package:my_dashboard/Widgets/dashboard_profile.dart';
import 'package:my_dashboard/Widgets/investment_and_income_section.dart';
import 'package:my_dashboard/Widgets/money_pay.dart';
import 'package:my_dashboard/Widgets/my_card_and_transaction_history.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        SizedBox(
          height: 20,
        ),
        Expanded(
            child: Padding(
          padding: EdgeInsets.only(left: 12),
          child: CustomDrawer(),
        )),
        Expanded(
            flex: 3,
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: 15,
                  ),
                ),
                SliverToBoxAdapter(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      MoneyPay(),
                      DashboardProfile(),
                    ],
                  ),
                ),
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: 40,
                  ),
                ),
                SliverToBoxAdapter(child: AllExpensesListView()),
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: 30,
                  ),
                ),
                SliverToBoxAdapter(
                  child: MyCardAndTransactionHistory(),
                ),
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: 30,
                  ),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: InvestmentAndIncomeSection(),
                  ),
                ),
              ],
            )),
      ],
    );
  }
}
