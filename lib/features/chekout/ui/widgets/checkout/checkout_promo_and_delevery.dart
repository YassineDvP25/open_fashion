import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:open__fashion__app/core/components/text.dart';
import 'package:open__fashion__app/core/helpers/spacing.dart';
import 'package:open__fashion__app/core/theming/colors/app_colors.dart';

class CheckoutPromoAndDelevery extends StatelessWidget {
  const CheckoutPromoAndDelevery({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(color: AppColors.mainLightGrey, thickness: 0.5.w),
        verticalSpace(5),

        Row(
          children: [
            horizantalSpace(30),

            SvgPicture.asset(
              'assets/svgs/Voucher.svg',
              width: 25.w,
              height: 25.w,
            ),
            horizantalSpace(10),
            CustomText(
              text: 'Add Promo Code',
              fontSize: 12.sp,
              color: AppColors.mainDarkGrey,
              fontWeight: FontWeight.w600,
            ),
          ],
        ),
        verticalSpace(5),

        Divider(color: AppColors.mainLightGrey, thickness: 0.5.w),
        verticalSpace(5),

        Row(
          children: [
            Row(
              children: [
                horizantalSpace(30),

                SvgPicture.asset(
                  'assets/svgs/Door to Door Delivery.svg',
                  width: 30.w,
                  height: 25.h,
                ),
                horizantalSpace(10),
                CustomText(
                  text: 'Delevery',
                  fontSize: 12.sp,
                  color: AppColors.mainDarkGrey,
                  fontWeight: FontWeight.w600,
                ),
              ],
            ),
            const Spacer(),
            CustomText(
              text: 'Free',
              fontSize: 14.sp,
              color: AppColors.mainDarkGrey,
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
        verticalSpace(5),
        Divider(color: AppColors.mainLightGrey, thickness: 0.5.w),
      ],
    );
  }
}
