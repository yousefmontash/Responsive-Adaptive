// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:resp_and_adapt/src/core/styles/size_config.dart';

double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveSize = fontSize * scaleFactor;
  double lowerLimit = fontSize * 0.8;
  double upperLimit = fontSize * 1.2;
  responsiveSize = responsiveSize.clamp(lowerLimit, upperLimit);
  return responsiveSize;
}

// double getResponsiveFontSizeWithoutContext({required double fontSize}) {
//   double scaleFactor = getScaleFactorWithoutContext();
//   double responsiveSize = fontSize * scaleFactor;
//   double lowerLimit = fontSize * 0.8;
//   double upperLimit = fontSize * 1.2;
//   responsiveSize = responsiveSize.clamp(lowerLimit, upperLimit);
//   return responsiveSize;
// }

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tablet) {
    return width / SizeConfig.mobileBaseSize;
  } else if (width < SizeConfig.desktop) {
    return width / SizeConfig.tabletBaseSize;
  } else {
    return width / SizeConfig.desktopBaseSize;
  }
}

// double getScaleFactorWithoutContext() {
//   var dispacher = PlatformDispatcher.instance;
//   var physicalWidth = dispacher.views.first.physicalSize.width;
//   var devicePixelRatio = dispacher.views.first.devicePixelRatio;
//   double width = physicalWidth / devicePixelRatio;
//   if (width < SizeConfig.tablet) {
//     return width / SizeConfig.mobileBaseSize;
//   } else if (width < SizeConfig.desktop) {
//     return width / SizeConfig.tabletBaseSize;
//   } else {
//     return width / SizeConfig.desktopBaseSize;
//   }
// }
