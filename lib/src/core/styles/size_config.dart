
class SizeConfig {
  static const double desktopBreakPoint = 1200;
  static const double tabletBreakPoint = 800;

  
  // not good way and has some issues that is rare and my happen in bad times
  // static late double height, width;
  // static init(BuildContext context) {
  //   height = MediaQuery.sizeOf(context).height;
  //   width = MediaQuery.sizeOf(context).width;
  // }
}
