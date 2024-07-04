import 'package:flutter/material.dart';
import 'package:my_dashboard/Utils/app_style.dart';

class MoneyPay extends StatelessWidget {
  const MoneyPay({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Text(
              "Money ",
              style: AppStyle.semiBold30(context),
            ),
            Text(
              "pay",
              style:
                  AppStyle.semiBold30(context).copyWith(color: const Color(0xff0499AD)),
            ),
          ],
        ),
         Text(
          "Get Track your online transactions here.",
          style: AppStyle.regular16(context),
        )
      ],
    );
  }
}
