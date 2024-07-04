import 'package:flutter/material.dart';
import 'package:my_dashboard/Utils/app_style.dart';

class MyCardDetails extends StatelessWidget {
  const  MyCardDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            r"$ 5850.75",
            style: AppStyle.bold26(context)
                .copyWith(color: const Color(0xff197BBD)),
          ),
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            "Current balance",
            style: AppStyle.regular14(context),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            r"$ 1600.00",
            style: AppStyle.semiBold20(context)
                .copyWith(color: const Color(0xff439A86)),
          ),
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            "Income",
            style: AppStyle.regular14(context),
          ),
        ),
      ],
    );
  }
}
