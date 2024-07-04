import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:my_dashboard/Utils/size_config.dart';

class DashboardAdaptive extends StatelessWidget {
  const DashboardAdaptive(
      {super.key,
      required this.mobileLayout,
      required this.tabletLayout,
      required this.desktopLayout});
  final WidgetBuilder mobileLayout, tabletLayout, desktopLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      log("width: ${constrains.maxWidth.toString()}");
      log("height: ${constrains.maxHeight.toString()}");
      if (constrains.maxWidth < SizeConfig.tabletsize) {
        //mobile layout;
        return mobileLayout(context);
      } else if (constrains.maxWidth < SizeConfig.desktopSize) {
        //labtop layout;
        return tabletLayout(context);
      } else {
        //desktop layout;
        return desktopLayout(context);
      }
    });
  }
}
