import 'package:flutter/material.dart';
import 'package:my_dashboard/Models/drawer_item_models.dart';
import 'package:my_dashboard/Widgets/actvice_and_inactive_darwer_item.dart';

class DrawerListTile extends StatelessWidget {
  const DrawerListTile(
      {super.key, required this.drawerItemModels, required this.isActive});
  final DrawerItemModels drawerItemModels;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      firstChild: InActiveListTile(
        drawerItemModels: drawerItemModels,
      ),
      secondChild: ActiveListTile(drawerItemModels: drawerItemModels),
      crossFadeState: isActive == true
          ? CrossFadeState.showSecond
          : CrossFadeState.showFirst,
      duration: const Duration(microseconds: 300),
      firstCurve: Curves.bounceOut,
      secondCurve: Curves.bounceIn,
    );
  }
}
