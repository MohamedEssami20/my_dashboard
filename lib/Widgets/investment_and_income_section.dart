import 'package:flutter/material.dart';
import 'package:my_dashboard/Widgets/income_section.dart';
import 'package:my_dashboard/Widgets/investment_section.dart';

class InvestmentAndIncomeSection extends StatelessWidget {
  const InvestmentAndIncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    if (width < 800) {
      return const AspectRatio(
        aspectRatio: 1,
        child: Column(
          children: [
            Expanded(child: InvestmentSection()),
            Expanded(
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal, child: IncomeSection()),
            ),
          ],
        ),
      );
    } else if (width <= 1200) {
      return AspectRatio(
        aspectRatio: 200 / 130,
        child: Container(
          color: Colors.blue,
          child: Column(
            children: [
              Expanded(
                  child: Container(
                      color: Colors.green, child: InvestmentSection())),
              Expanded(
                child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal, child: IncomeSection()),
              ),
            ],
          ),
        ),
      );
    } else {
      return const Row(
        children: [
          Expanded(flex: 2, child: InvestmentSection()),
          Expanded(flex: 3, child: IncomeSection()),
        ],
      );
    }
  }
}
