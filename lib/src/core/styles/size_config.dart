class SizeConfig {
  static const double desktop = 1200;
  static const double tablet = 800;
  static double mobileBaseSize = 0 + (tablet - 0) / 2 + 400;
  static double tabletBaseSize = tablet + (desktop - tablet) / 2;
  static double desktopBaseSize = desktop + tablet / 2;

  // not good way and has some issues that is rare and my happen in bad times
  // static late double height, width;
  // static init(BuildContext context) {
  //   height = MediaQuery.sizeOf(context).height;
  //   width = MediaQuery.sizeOf(context).width;
  // }
}
