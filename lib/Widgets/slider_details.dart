import 'package:flutter/material.dart';
import 'package:my_dashboard/Utils/app_style.dart';

class SliderDetails extends StatelessWidget {
  const SliderDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              "Weekly payment limit",
              style: AppStyle.regular14(context).copyWith(color: const Color(0xff0499AD)),
            ),
          ),
        ),
         FittedBox(
          fit: BoxFit.scaleDown,
           child: Text(
            r"$350.60 / $4000",
            style: AppStyle.semiBold14(context),
                   ),
         ),
      ],
    );
  }
}
