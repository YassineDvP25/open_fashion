import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:open__fashion__app/core/components/text.dart';
import 'package:open__fashion__app/core/theming/colors/app_colors.dart';

class PlaceOrderMethodeContainer extends StatelessWidget {
  const PlaceOrderMethodeContainer({super.key});

  @override
  Widget build(BuildContext context) {
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
              text: 'Add shipping adress',
              color: AppColors.grayScaleLabel,
              fontSize: 20,
            ),
            Spacer(),
            Icon(Icons.add),
          ],
        ),
      ),
    );
  }
}
