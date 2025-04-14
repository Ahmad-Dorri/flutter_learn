import 'package:flutter_screenutil/flutter_screenutil.dart';

class Dimens {
  static double height_16 = setHeight(16.0);
  static double height_24 = setHeight(24.0);
  static double height_32 = setHeight(32.0);

  static double width_16 = setWidth(16.0);
  static double width_24 = setWidth(24.0);
  static double width_32 = setWidth(32.0);

  static double font_16 = setSp(16.0);
  static double font_24 = setSp(24.0);
  static double font_32 = setSp(32.0);

  static double border_8 = setBorderRadios(8.0);
  static double border_16 = setBorderRadios(16.0);
  static double border_24 = setBorderRadios(24.0);


  static double setWidth(double size) {
    return size.w;
  }

  static double setHeight(double size) {
    return size.h;
  }

  static double setSp(double fontSize) {
    return fontSize.sp;
  }

  static double setBorderRadios(double borderRadios) {
    return borderRadios.r;
  }
}
