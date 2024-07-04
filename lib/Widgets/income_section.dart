import 'package:flutter/material.dart';
import 'package:my_dashboard/Utils/app_style.dart';
import 'package:my_dashboard/Widgets/chart_item_list_view.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(left: 30, top: 20),
            child: Text(
              "Outcome Statistics",
              style: AppStyle.semiBold20(context),
            ),
          )),
          const Expanded(flex: 3, child: ChartItemListView()),
        ],
      ),
    );
  }
}
