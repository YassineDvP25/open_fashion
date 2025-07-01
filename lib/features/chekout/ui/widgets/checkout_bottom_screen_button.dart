import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:open__fashion__app/core/components/text.dart';
import 'package:open__fashion__app/core/helpers/spacing.dart';

class CheckoutBottomScreenButton extends StatelessWidget {
  final String text;
  final bool isSvgg;
  final VoidCallback? onTap;
  const CheckoutBottomScreenButton({super.key, required this.isSvgg, required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    bool isSvg = isSvgg;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 35.h,
        color: Colors.black,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              isSvg
                  ?   SvgPicture.asset('assets/svgs/shopping bag.svg')
                  : const SizedBox.shrink(),
              horizantalSpace(15),
              CustomText(
                text: text.toUpperCase(),
                fontSize: 16.sp,
                color: Colors.white,
                fontWeight: FontWeight.w500,
                letterSpace: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
