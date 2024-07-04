import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:my_dashboard/Widgets/dashboard_view.dart';

void main() {
  runApp(const DashBoard());
  // runApp(  DevicePreview(
  //   enabled: !kReleaseMode,
  //   builder: (context) => const DashBoard(), // Wrap your app
  // ),
  // );
}

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // locale: DevicePreview.locale(context),
      // builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home:  DashboardView(),
    );
  }
}
