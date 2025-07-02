import 'package:flutter/cupertino.dart';

class AppColors {
  static const mainBlack = Color(0xff111111);
  static const mainWhite = Color(0xffFFFFFF);

  static const mainBlackColorFilter = ColorFilter.mode(
    mainBlack,
    BlendMode.srcIn,
  );
  static const mainWhiteColorFilter = ColorFilter.mode(
    mainWhite,
    BlendMode.srcIn,
  );
  static const mainGrey = Color(0xffC5C5C5);
  static const mainLightGrey = Color(0xff555555);
  //#DD8560
  static const mainOrange = Color(0xffDD8560);
  static const mainDarkGrey = Color(0xff333333);
  static const grayScaleHoder = Color(0xff888888);
  static const grayScaleLabel = Color(0xff555555);
  static const grayScaleInputBg = Color(0xffF9F9F9);
}
