import 'package:flutter/material.dart';
import 'package:my_dashboard/Utils/size_config.dart';

abstract class AppStyle {
  static TextStyle regular14(BuildContext context) {
    return TextStyle(
      fontFamily: 'Poppins',
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeight.w400,
      color: const Color(0xffC7C7C7),
    );
  }

  static TextStyle semiBold24(BuildContext context) {
    return TextStyle(
      fontFamily: 'Poppins',
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontWeight: FontWeight.w600,
      color: const Color(0xff696969),
    );
  }

  static TextStyle medium16(BuildContext context) {
    return TextStyle(
      fontFamily: 'Poppins',
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w500,
      color: const Color(0xffFFFFFF),
    );
  }

  static TextStyle regular20(BuildContext context) {
    return TextStyle(
      fontFamily: 'Poppins',
      fontSize: getResponsiveFontSize(context, fontSize: 20.11),
      fontWeight: FontWeight.w400,
      color: const Color(0xff404040),
    );
  }

  static TextStyle regular17(BuildContext context) {
    return TextStyle(
      fontFamily: 'Poppins',
      fontSize: getResponsiveFontSize(context, fontSize: 17),
      fontWeight: FontWeight.w400,
      color: const Color(0xffABABAB),
    );
  }

  static TextStyle semiBold20(BuildContext context) {
    return TextStyle(
      fontFamily: 'Poppins',
      fontSize: getResponsiveFontSize(context, fontSize: 20.11),
      fontWeight: FontWeight.w600,
      color: const Color(0xff404040),
    );
  }

  static TextStyle bold26(BuildContext context) {
    return TextStyle(
      fontFamily: 'Poppins',
      fontSize: getResponsiveFontSize(context, fontSize: 26),
      fontWeight: FontWeight.w700,
      color: const Color(0xff252525),
    );
  }

  static TextStyle bold14(BuildContext context) {
    return TextStyle(
      fontFamily: 'Poppins',
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeight.w700,
      color: const Color(0xff404040),
    );
  }

  static TextStyle medium21(BuildContext context) {
    return TextStyle(
      fontFamily: 'Poppins',
      fontSize: getResponsiveFontSize(context, fontSize: 21.49),
      fontWeight: FontWeight.w500,
      color: const Color(0xffFFFFFF),
    );
  }

  static TextStyle medium7(BuildContext context) {
    return TextStyle(
      fontFamily: 'Poppins',
      fontSize: getResponsiveFontSize(context,
          fontSize: 10), // Adjusted from 7 to 10 based on your last example
      fontWeight: FontWeight.w500,
      color: const Color(0xffFFFFFF),
    );
  }

  static TextStyle medium12(BuildContext context) {
    return TextStyle(
      fontFamily: 'Poppins',
      fontSize: getResponsiveFontSize(context, fontSize: 12.62),
      fontWeight: FontWeight.w500,
      color: const Color(0xffFFFFFF),
    );
  }

  static TextStyle semiBold30(BuildContext context) {
    return TextStyle(
      fontFamily: 'Poppins',
      fontSize: getResponsiveFontSize(context, fontSize: 30),
      fontWeight: FontWeight.w600,
      color: const Color(0xff000000),
    );
  }

  static TextStyle regular16(BuildContext context) {
    return TextStyle(
      fontFamily: 'Poppins',
      fontSize: getResponsiveFontSize(context, fontSize: 16.06),
      fontWeight: FontWeight.w400,
      color: const Color(0xffAEAEAE),
    );
  }

  static TextStyle semiBold14(BuildContext context) {
    return TextStyle(
      fontFamily: 'Poppins',
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeight.w600,
      color: const Color(0xff404040),
    );
  }

  static TextStyle bold16(BuildContext context) {
    return TextStyle(
      fontFamily: 'Poppins',
      fontSize: getResponsiveFontSize(context, fontSize: 16.7),
      fontWeight: FontWeight.w700,
      color: const Color(0xffFFFFFF),
    );
  }

  static TextStyle bold8(BuildContext context) {
    return TextStyle(
      fontFamily: 'Poppins',
      fontSize: getResponsiveFontSize(context, fontSize: 8),
      fontWeight: FontWeight.w700,
      color: const Color(0xffFFFFFF),
    );
  }

  // method of responsive Text;

  static double getResponsiveFontSize(BuildContext context,
      {required double fontSize}) {
    double scaleFactor = getScaleFactor(context);
    double responsiveText = scaleFactor * fontSize;
    double upperLimit = responsiveText * 1.2;
    double lowerLimit = responsiveText * 0.8;
    //log("responsive Text= ${responsiveText.clamp(lowerLimit, upperLimit).toString()}");
    return responsiveText.clamp(lowerLimit, upperLimit);
  }

  static double getScaleFactor(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    if (width < SizeConfig.tabletsize) {
      return width / 770;
    } else if (width < SizeConfig.desktopSize) {
      return width / 1170;
    } else {
      return width / 1690;
    }
  }
}
