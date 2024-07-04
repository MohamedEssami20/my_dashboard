import 'package:flutter/material.dart';
import 'package:my_dashboard/Utils/app_style.dart';

class DetactiveCard extends StatefulWidget {
  const 
  DetactiveCard({super.key});

  @override
  State<DetactiveCard> createState() => _DetactiveCardState();
}

class _DetactiveCardState extends State<DetactiveCard> {
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Switch(
            activeColor: Colors.white,
            activeTrackColor: const Color(0xff3391D0),
            trackOutlineColor:
                const WidgetStatePropertyAll(Color(0xffFFFFFF)),
            inactiveThumbColor: const Color(0xffCDCDCD),
            inactiveTrackColor: const Color(0xffEBEBEB),
            value: isActive,
            onChanged: (value) {
              setState(() {
                isActive = value;
              });
            }),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            "Deacivate card",
            style: AppStyle.regular14(context),
          ),
        )
      ],
    );
  }
}
