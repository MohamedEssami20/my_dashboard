import 'package:flutter/material.dart';
import 'package:my_dashboard/Utils/size_config.dart';
import 'package:my_dashboard/Widgets/income_section.dart';
import 'package:my_dashboard/Widgets/investment_section.dart';

class InvestmentAndIncomeSection extends StatelessWidget {
  const InvestmentAndIncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    if (width < SizeConfig.tabletsize) {
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
    } else if (width <= SizeConfig.desktopSize) {
      return const AspectRatio(
        aspectRatio: 200 / 130,
        child: Column(
          children: [
            Expanded(
                child: Padding(
              padding: EdgeInsets.only(right: 20),
              child: InvestmentSection(),
            )),
            Expanded(
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal, child: IncomeSection()),
            ),
          ],
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
