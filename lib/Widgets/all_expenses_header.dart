import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({
    super.key,
    required this.image,
    this.backGroundImageColor,
    this.imageColor,
  });
  final String image;
  final Color? backGroundImageColor, imageColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 45),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                alignment: Alignment.center,
                decoration: ShapeDecoration(
                    color: backGroundImageColor ??
                        const Color(0xffffffff).withOpacity(.2),
                    shape: const OvalBorder()),
                child: Center(
                  child: SvgPicture.asset(
                    image,
                    colorFilter: imageColor == null
                        ? const ColorFilter.mode(
                            Color.fromARGB(255, 7, 7, 7), BlendMode.srcIn)
                        : const ColorFilter.mode(
                            Color(0xff434343), BlendMode.srcIn),
                    // colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
