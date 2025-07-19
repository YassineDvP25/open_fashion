import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:open__fashion__app/core/components/text.dart';
import 'package:open__fashion__app/core/helpers/spacing.dart';
import 'package:open__fashion__app/core/theming/colors/app_colors.dart';

class MasterCardEndingAndBrand extends StatelessWidget {
  final String lastTwoDigitsFromCardNumber;
  final String creditCardBrandName;
  const MasterCardEndingAndBrand({
    super.key,
    required this.lastTwoDigitsFromCardNumber,
    required this.creditCardBrandName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0).w,
      child: Row(
        children: [
          Container(
            clipBehavior: Clip.antiAlias,

            width: 50.w,
            height: 50.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13.r),
            ),
            child: SvgPicture.asset(
              fit: BoxFit.fitWidth,
              width: 50.w,
              height: 50.h,
              'assets/svgs/card_brands/$creditCardBrandName.svg',
            ),
          ),

          horizantalSpace(10),

          CustomText(
            text: 'Master Card ending  ••••$lastTwoDigitsFromCardNumber',
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            color: AppColors.mainDarkGrey,
          ),
          Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_forward_ios,
              size: 15.sp,
              color: AppColors.mainDarkGrey,
            ),
          ),
        ],
      ),
    );
  }
}
