import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:open__fashion__app/core/components/text.dart';
import 'package:open__fashion__app/core/theming/colors/app_colors.dart';

class HomeCopyRightInformation extends StatelessWidget {
  const HomeCopyRightInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.mainGrey.withValues(alpha: 0.2),
      ),
      alignment: Alignment.center,
      height: 40.h,
      width: double.infinity,
      child : CustomText(
        text: 'Copyright © 2023 Open Fashion. All rights reserved.',
        color: AppColors.grayScaleInputBg,
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
