import 'package:flutter/material.dart';
import 'package:my_dashboard/Models/drawer_item_models.dart';
import 'package:my_dashboard/Utils/app_images.dart';
import 'package:my_dashboard/Widgets/drawer_list_tile.dart';

class ItemsDrawerListview extends StatefulWidget {
  const ItemsDrawerListview({super.key});
  static const List<DrawerItemModels> items = [
    DrawerItemModels(image: Assets.assetsImagesDashboard, title: "Dashboard"),
    DrawerItemModels(
        image: Assets.assetsImagesMydocument, title: "My Documents"),
    DrawerItemModels(image: Assets.assetsImagesAnalytics, title: "Analytics"),
    DrawerItemModels(image: Assets.assetsImagesHistory, title: "History"),
    DrawerItemModels(image: Assets.assetsImagesNews, title: "News"),
    DrawerItemModels(image: Assets.assetsImagesEpay, title: "E-Pay"),
       DrawerItemModels(image: Assets.assetsImagesSetting, title: "Settings"),
    DrawerItemModels(image: Assets.assetsImagesLogin, title: "Log out"),
  ];

  @override
  State<ItemsDrawerListview> createState() => _ItemsDrawerListviewState();
}

class _ItemsDrawerListviewState extends State<ItemsDrawerListview> {
  int myindex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: ItemsDrawerListview.items.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              if (myindex != index) {
                setState(() {
                  myindex = index;
                });
              }
              print("index= $myindex");
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 7),
              child: DrawerListTile(
                drawerItemModels: ItemsDrawerListview.items[index],
                isActive: myindex == index ? true : false,
              ),
            ),
          );
        });
  }
}
