import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:open__fashion__app/core/components/text.dart';
import 'package:open__fashion__app/core/theming/colors/app_colors.dart';

class CheckoutProductPriceTotal extends StatelessWidget {
  final int counterNumber;
  final int price;
  const CheckoutProductPriceTotal({super.key, required this.counterNumber, required this.price});

  @override
  Widget build(BuildContext context) {
    return   Container(
              padding: EdgeInsets.symmetric(vertical: 15).w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: 'EST.  TOTAL',
                    fontSize: 16.sp,
                    color: AppColors.mainDarkGrey,
                    fontWeight: FontWeight.w500,
                  ),
                  CustomText(
                    text:
                        '\$${price * counterNumber}',
                    fontSize: 16.sp,
                    color: AppColors.mainOrange,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
            );
  }
}