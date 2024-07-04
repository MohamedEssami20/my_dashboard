import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_dashboard/Utils/app_images.dart';
import 'package:my_dashboard/Utils/app_style.dart';

class DashboardProfile extends StatelessWidget {
  const DashboardProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(Assets.assetsImagesMail),
          const SizedBox(
            width: 8,
          ),
          SvgPicture.asset(Assets.assetsImagesBell),
          const SizedBox(
            width: 8,
          ),
          CircleAvatar(
              backgroundColor: null,
              backgroundImage: const AssetImage("Assets/images/profile.png"),
              child: SvgPicture.asset(Assets.assetsImagesImageProfile)),
          const SizedBox(
            width: 8,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Kristin Watson",
                style: AppStyle.regular14(context)
                    .copyWith(color: const Color(0xff0499AD)),
              ),
              Text(
                "kristinwatson@gmail.com",
                style: AppStyle.regular14(context)
                    .copyWith(color: const Color(0xff000000)),
              ),
            ],
          )
        ],
      ),
    );
  }
}
