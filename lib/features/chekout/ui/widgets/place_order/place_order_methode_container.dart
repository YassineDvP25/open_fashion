import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:open__fashion__app/core/components/text.dart';
import 'package:open__fashion__app/core/helpers/spacing.dart';
import 'package:open__fashion__app/core/theming/colors/app_colors.dart';

class PlaceOrderMethodeContainer extends StatelessWidget {
  final String  text;
  final IconData icon;
  final bool isFreeTextFoundd;

  const PlaceOrderMethodeContainer({
    super.key,
    required this.isFreeTextFoundd,
    required this.icon, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    bool isFreeTextFound = isFreeTextFoundd;
    return Container(
      height: 45.h,
      width: double.infinity,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25).r,
        color: AppColors.grayScaleInputBg,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20).w,
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomText(
              text: text,
              color: AppColors.grayScaleLabel,
              fontSize: 20,
            ),
            Spacer(),
            isFreeTextFound
                ? CustomText(
                  text: 'Free'.toUpperCase(),
                  color: AppColors.mainBlack,
                  fontSize: 18,
                )
                : SizedBox.shrink(),
            horizantalSpace(10),
            Icon(icon),
          ],
        ),
      ),
    );
  }
}
