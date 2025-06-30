import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:open__fashion__app/core/components/text.dart';
import 'package:open__fashion__app/core/helpers/spacing.dart';
import 'package:open__fashion__app/core/theming/colors/app_colors.dart';

class ProductsCounter extends StatelessWidget {
  final void Function()? oOnIncrement;
  final void Function()? onDecrement;
  final int counterNumber;
  const ProductsCounter({
    super.key,
    required this.counterNumber,
    this.oOnIncrement,
    this.onDecrement,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: oOnIncrement,
          child: ProductDecrementrIncrement(svgImage: 'assets/svgs/Plus.svg'),
        ),
        horizantalSpace(10),
        CustomText(
          text: '$counterNumber',
          fontSize: 14.sp,
          color: AppColors.mainBlack,
          fontWeight: FontWeight.bold,
        ),
        horizantalSpace(10),
        GestureDetector(
          onTap: onDecrement,

          child: ProductDecrementrIncrement(
            svgImage: 'assets/svgs/Plus (1).svg',
          ),
        ),
      ],
    );
  }
}
class ProductDecrementrIncrement extends StatelessWidget {
  final String svgImage;
  const ProductDecrementrIncrement({super.key, required this.svgImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: AppColors.mainGrey, width: 0.8.w),
      ),
      child: Padding(
        padding: const EdgeInsets.all(1.9).w,
        child: SvgPicture.asset(svgImage),
      ),
    );
  }
}
