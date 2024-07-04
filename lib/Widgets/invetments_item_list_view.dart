import 'package:flutter/material.dart';
import 'package:my_dashboard/Models/investment_item_model.dart';
import 'package:my_dashboard/Utils/app_images.dart';
import 'package:my_dashboard/Widgets/investment_item.dart';

class InvetmentsItemListView extends StatelessWidget {
  const InvetmentsItemListView({super.key});
  static const List<InvestmentItemModel> items = [
    InvestmentItemModel(
        money: r'$5250',
        date: "12/12/25",
        image: Assets.assetsImagesHolidays,
        type: "Holidays"),
    InvestmentItemModel(
        money: r'$120k',
        date: "12/23/25",
        image: Assets.assetsImagesBrush,
        type: "Renovation"),
    InvestmentItemModel(
        money: r'$1220',
        date: "12/12/25",
        image: Assets.assetsImagesGames,
        type: "Games"),
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
        children: items.map((e) {
      return Expanded(child: InvestmentItem(investmentItemModel: e));
    }).toList());
  }
}
