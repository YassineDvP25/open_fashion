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
}
