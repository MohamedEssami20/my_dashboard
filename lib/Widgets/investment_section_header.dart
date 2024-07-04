import 'package:flutter/material.dart';
import 'package:my_dashboard/Utils/app_style.dart';

class InvestmentSectionHeader extends StatelessWidget {
  const InvestmentSectionHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              "Investment",
              style: AppStyle.semiBold20(context),
            ),
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Container(
            alignment: Alignment.center,
            height: 24,
            width: 24,
            decoration: const ShapeDecoration(
              color: Color(0xffFFC145),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(100))),
            ),
            child: const Center(
              child: Icon(
                Icons.add,
                color: Color(0xff404040),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
