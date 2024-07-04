import 'package:flutter/material.dart';
import 'package:my_dashboard/Widgets/investment_section_header.dart';
import 'package:my_dashboard/Widgets/invetments_item_list_view.dart';

class InvestmentSection extends StatelessWidget {
  const InvestmentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        InvestmentSectionHeader(),
        SizedBox(
          height: 8,
        ),
        InvetmentsItemListView()
      ],
    );
  }
}
