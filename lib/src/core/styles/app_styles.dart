import 'package:flutter/material.dart';
import 'package:resp_and_adapt/src/core/utils/functions/responsive_text.dart';

abstract class AppStyles {
  static TextStyle styleRegular12(BuildContext context) {
    return TextStyle(
      fontFamily: "Montserrat",
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      color: Color(0xFFAAAAAA),
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleRegular14(BuildContext context) {
    return TextStyle(
      fontFamily: "Montserrat",
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      color: Color(0xFFAAAAAA),
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleRegular16(BuildContext context) {
    return TextStyle(
      fontFamily: "Montserrat",
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      color: Color(0xFF064061),
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleMedium16(BuildContext context) {
    return TextStyle(
      fontFamily: "Montserrat",
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      color: Color(0xFF064061),
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleSemiBold16(BuildContext context) {
    return TextStyle(
      fontFamily: "Montserrat",
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      color: Color(0xFF064061),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleBold16(BuildContext context) {
    return TextStyle(
      fontFamily: "Montserrat",
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      color: Color(0xFF4EB7F2),
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleSemiBold18(BuildContext context) {
    return TextStyle(
      fontFamily: "Montserrat",
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      color: Color(0xFF4EB7F2),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleSemiBold20(BuildContext context) {
    return TextStyle(
      fontFamily: "Montserrat",
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      color: Color(0xFF064061),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleMedium20(BuildContext context) {
    return TextStyle(
      fontFamily: "Montserrat",
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      color: Color(0xFFFFFFFF),
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleSemiBold24(BuildContext context) {
    return TextStyle(
      fontFamily: "Montserrat",
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      color: Color(0xFF4EB7F2),
      fontWeight: FontWeight.w600,
    );
  }
}
