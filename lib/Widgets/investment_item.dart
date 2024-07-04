import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_dashboard/Models/investment_item_model.dart';
import 'package:my_dashboard/Utils/app_style.dart';

class InvestmentItem extends StatelessWidget {
  const InvestmentItem({
    super.key,
    required this.investmentItemModel,
  });
  final InvestmentItemModel investmentItemModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFFFFFF),
      elevation: 8,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, bottom: 12, top: 8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                investmentItemModel.money,
                style: AppStyle.semiBold24(context),
              ),
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                investmentItemModel.date,
                style: AppStyle.regular14(context),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            SvgPicture.asset(
              investmentItemModel.image,
              height: 35,
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                investmentItemModel.type,
                style: AppStyle.regular20(context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
