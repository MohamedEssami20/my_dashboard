import 'package:flutter/material.dart';
import 'package:my_dashboard/Widgets/all_expenses_list_view.dart';
import 'package:my_dashboard/Widgets/custom_drawer.dart';
import 'package:my_dashboard/Widgets/dashboard_profile.dart';
import 'package:my_dashboard/Widgets/investment_and_income_section.dart';
import 'package:my_dashboard/Widgets/money_pay.dart';
import 'package:my_dashboard/Widgets/my_card_and_transaction_history.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        SizedBox(
          width: 15,
        ),
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 25,
        ),
        Expanded(
            flex: 4,
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: 16,
                  ),
                ),
                SliverToBoxAdapter(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MoneyPay(),
                      DashboardProfile(),
                    ],
                  ),
                ),
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: 30,
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
                SliverToBoxAdapter(child: MyCardAndTransactionHistory()),
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: 10,
                  ),
                ),
               SliverToBoxAdapter(child: InvestmentAndIncomeSection()),
              ],
            )),
      ],
    );
  }
}
