import 'package:flutter/material.dart';
import 'package:my_dashboard/Utils/app_style.dart';
import 'package:my_dashboard/Utils/size_config.dart';
import 'package:my_dashboard/Widgets/custom_drawer.dart';
import 'package:my_dashboard/Widgets/dashboard_adaptive.dart';
import 'package:my_dashboard/Widgets/desktop_layout.dart';
import 'package:my_dashboard/Widgets/mobile_layout.dart';
import 'package:my_dashboard/Widgets/tablet_layout.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  GlobalKey<ScaffoldState> myKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      key: myKey,
      appBar: width <=SizeConfig.tabletsize 
          ? AppBar(
              backgroundColor: const Color(0xff0499AD),
              toolbarHeight: 70,
              centerTitle: true,
              title: Text(
                "Dashboard",
                style: AppStyle.bold26(context)
                    .copyWith(color: const Color(0xffFFFFFF)),
              ),
              leading: IconButton(
                onPressed: () {
                  setState(() {
                    myKey.currentState!.openDrawer();
                  });
                },
                icon: const Icon(
                  Icons.menu_outlined,
                  color: Color(0xffffffff),
                ),
              ),
            )
          : null,
      backgroundColor: const Color(0xffFEFEFE),
      drawer:
          MediaQuery.sizeOf(context).width <= SizeConfig.tabletsize ? const CustomDrawer() : null,
      body: DashboardAdaptive(
        mobileLayout: (context) => const MobileLayout(),
        tabletLayout: (context) => const TabletLayout(),
        desktopLayout: (context) => const DesktopLayout(),
      ),
    );
  }
}
