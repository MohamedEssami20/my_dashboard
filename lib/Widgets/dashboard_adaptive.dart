import 'dart:developer';

import 'package:flutter/material.dart';

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
      if (constrains.maxWidth < 800) {
        //mobile layout;
        return mobileLayout(context);
      } else if (constrains.maxWidth < 1200) {
        //labtop layout;
        return tabletLayout(context);
      } else {
        //desktop layout;
        return desktopLayout(context);
      }
    });
  }
}
