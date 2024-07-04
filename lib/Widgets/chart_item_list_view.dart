import 'package:flutter/material.dart';
import 'package:my_dashboard/Models/chart_item_model.dart';
import 'package:my_dashboard/Widgets/my_chart.dart';

class ChartItemListView extends StatelessWidget {
  const ChartItemListView({super.key});
  static const List<ChartItemModel> items = [
    ChartItemModel(chartTitle: "50%", chartLabel: "Travels", chartValue: 50),
    ChartItemModel(
        chartTitle: "75%", chartLabel: "Electronics", chartValue: 75),
    ChartItemModel(chartTitle: "87%", chartLabel: "Shoppping", chartValue: 87),
  ];
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
          child: MyChart(
        chartItemModel: items[0],
      )),
      Expanded(
          child: MyChart(
        chartItemModel: items[1],
      )),
      Expanded(
          child: MyChart(
        chartItemModel: items[2],
      )),
    ]);
  }
}
