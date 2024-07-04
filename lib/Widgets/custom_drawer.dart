import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_dashboard/Utils/app_images.dart';
import 'package:my_dashboard/Utils/app_style.dart';
import 'package:my_dashboard/Widgets/items_drawer_listview.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      width: width * .5,
      decoration: ShapeDecoration(
        color: const Color(0xff000000),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      ),
      child: width < 800
          ? CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: UserAccountsDrawerHeader(
                    otherAccountsPictures: [
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        child: SvgPicture.asset(Assets.assetsImagesBell),
                      )
                    ],
                    decoration: const BoxDecoration(
                        color: Color(0xff000000),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16),
                            topRight: Radius.circular(16))),
                    currentAccountPicture: Center(
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: CircleAvatar(
                            minRadius: 20,
                            maxRadius: 25,
                            backgroundColor: null,
                            backgroundImage:
                                const AssetImage("Assets/images/profile.png"),
                            child: SvgPicture.asset(
                              Assets.assetsImagesImageProfile,
                            )),
                      ),
                    ),
                    accountName: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        "Kristin Watson",
                        style: AppStyle.regular20(context)
                            .copyWith(color: const Color(0xff0499AD)),
                      ),
                    ),
                    accountEmail: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        "kristinwatson@gmail.com",
                        style: AppStyle.regular14(context)
                            .copyWith(color: const Color(0xffffffff)),
                      ),
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30, top: 30),
                    child: Text(
                      "MENU",
                      style: AppStyle.regular14(context),
                    ),
                  ),
                ),
                const SliverToBoxAdapter(
                  child: SizedBox(
                    height: 10,
                  ),
                ),
                const ItemsDrawerListview(),
                const SliverToBoxAdapter(
                  child: SizedBox(
                    height: 120,
                  ),
                ),
              ],
            )
          : CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30, top: 30),
                    child: Text(
                      "MENU",
                      style: AppStyle.regular14(context),
                    ),
                  ),
                ),
                const SliverToBoxAdapter(
                  child: SizedBox(
                    height: 10,
                  ),
                ),
                const ItemsDrawerListview(),
                const SliverToBoxAdapter(
                  child: SizedBox(
                    height: 120,
                  ),
                ),
              ],
            ),
    );
  }
}
