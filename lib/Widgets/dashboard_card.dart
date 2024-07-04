import 'package:flutter/material.dart';
import 'package:my_dashboard/Utils/app_style.dart';

class DashboardCard extends StatelessWidget {
  const DashboardCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 30, top: 16),
      decoration: BoxDecoration(
        image: const DecorationImage(
            image: AssetImage("Assets/images/Vector.png"),
            alignment: Alignment.bottomRight),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(16),
        gradient: const LinearGradient(stops: [
          0,
          100,
        ], colors: [
          Color(0xff197BBD),
          Color(0xff3391D0)
        ]),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              "Money Pay",
              style: AppStyle.bold16(context),
            ),
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              "PREMIUM ACCOUNT",
              style: AppStyle.bold8(context),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              "6978 **** **** **** 8054",
              style: AppStyle.medium21(context),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  "Card holder",
                  style: AppStyle.medium7(context),
                ),
              ),
              const SizedBox(
                width: 60,
              ),
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  "Expire date",
                  style: AppStyle.medium7(context),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  "Angela Bower",
                  style: AppStyle.medium12(context),
                ),
              ),
              const SizedBox(
                width: 35,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    "06/21",
                    style: AppStyle.medium12(context),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
