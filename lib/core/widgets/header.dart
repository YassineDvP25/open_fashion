import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:open__fashion__app/core/components/text.dart';
import 'package:open__fashion__app/core/helpers/spacing.dart';

class Header extends StatelessWidget {
  final String text;

  const Header({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomText(text: text, letterSpace: 3,),
        verticalSpace(20),
        SvgPicture.asset('assets/texts/home_devider.svg', width: 160.w),
      ],
    );
  }
}
