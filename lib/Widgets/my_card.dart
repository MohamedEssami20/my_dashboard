import 'package:flutter/material.dart';
import 'package:my_dashboard/Utils/app_style.dart';
import 'package:my_dashboard/Widgets/dashboard_card.dart';
import 'package:my_dashboard/Widgets/detactive_card.dart';
import 'package:my_dashboard/Widgets/my_card_details.dart';
import 'package:my_dashboard/Widgets/slider.dart';
import 'package:my_dashboard/Widgets/slider_details.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFFFFFF),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 4,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxHeight: 420, maxWidth: 650),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 25,
                  top: 20,
                ),
                child: Text(
                  "Cards",
                  style: AppStyle.semiBold20(context),
                ),
              ),
            ),
            const Expanded(
              flex: 4,
              child: Row(
                children: [
                  Expanded(
                      flex: 3,
                      child: Padding(
                        padding: EdgeInsets.only(left: 20, right: 30),
                        child: DashboardCard(),
                      )),
                  Expanded(child: MyCardDetails())
                ],
              ),
            ),
            const Expanded(
              flex: 2,
              child: Row(
                children: [
                  Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          MySlider(),
                          SliderDetails(),
                        ],
                      )),
                  Expanded(child: DetactiveCard()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
