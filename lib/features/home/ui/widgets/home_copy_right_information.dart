import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:open__fashion__app/core/helpers/textstyles.dart';
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
      child: Text(
        'Copyright© OpenUI All Rights Reserved..',
        style: TextStyles.whiteFont10TenorSans,
      ),
    );
  }
}
