import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_dashboard/Models/drawer_item_models.dart';
import 'package:my_dashboard/Utils/app_style.dart';

class ActiveListTile extends StatelessWidget {
  const ActiveListTile({super.key, required this.drawerItemModels});
  final DrawerItemModels drawerItemModels;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      color: const Color(0xff0499AD),
      child: ListTile(
        leading: SvgPicture.asset(
          drawerItemModels.image,
        ),
        title: Text(
          drawerItemModels.title,
          style: AppStyle.medium16(context),
        ),
      ),
    );
  }
}

class InActiveListTile extends StatelessWidget {
  const InActiveListTile({super.key, required this.drawerItemModels});
  final DrawerItemModels drawerItemModels;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(
        drawerItemModels.image,
      ),
      title: Text(
        drawerItemModels.title,
        style: AppStyle.medium16(context),
      ),
    );
  }
}
