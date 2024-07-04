import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:my_dashboard/Models/chart_item_model.dart';
import 'package:my_dashboard/Utils/app_style.dart';

class MyChart extends StatelessWidget {
  const MyChart({super.key, required this.chartItemModel});
  final ChartItemModel chartItemModel;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(flex: 2, child: PieChart(pieChartData(context))),
      Expanded(
          child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Text(
          chartItemModel.chartLabel,
          style: AppStyle.regular14(context),
        ),
      )), //variable;
    ]);
  }

  PieChartData pieChartData(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return PieChartData(
      sections: [
        PieChartSectionData(
          showTitle: true,
          value: chartItemModel.chartValue, //varialbel
          radius: width <= 1000 ? 12 : 18,
          title: chartItemModel.chartTitle, //variable
          titlePositionPercentageOffset: getCenterTitle(width: width),
          titleStyle: AppStyle.semiBold24(context),
          gradient: const LinearGradient(stops: [
            0,
            100,
          ], colors: [
            Color(0xff0499AD),
            Color(0xff000000),
          ]),
        ),
        PieChartSectionData(
          radius: width <= 1000 ? 11 : 18,
          showTitle: false,
          value: 100 - chartItemModel.chartValue,
          color: Colors.white,
        )
      ],
    );
  }

  double getCenterTitle({required double width}) {
    if (width <= 799) {
      print(
          "******************width is less than 790 ***************** width= ${width.toString()}");
      return width / -126;
    } else if (width <= 862) {
      print("width is less than 920************* width=$width");
      return width / -200;
    } else if (width <= 1000) {
      print("width is less than 1130************* width=$width");
      return width / -250;
    } else {
      return width / -380;
    }
  }
}
