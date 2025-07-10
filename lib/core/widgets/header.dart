import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:open__fashion__app/core/components/text.dart';
import 'package:open__fashion__app/core/helpers/spacing.dart';
import 'package:open__fashion__app/core/theming/colors/app_colors.dart';

class Header extends StatelessWidget {
  final String text;
  final double dividerWidth;

  const Header({super.key, required this.text, this.dividerWidth = 125});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          CustomText(
            text: text,
            letterSpace: 6,
            color: Colors.black,
            fontSize: 20.sp,
            fontWeight: FontWeight.w400,
          ),
          verticalSpace(5),
          Image.asset(
            'assets/images/divider2.png',
            width: dividerWidth.w,
            color: AppColors.mainBlack,
          ),
        ],
      ),
    );
  }
}
