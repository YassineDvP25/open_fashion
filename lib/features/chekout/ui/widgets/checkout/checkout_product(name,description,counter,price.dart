
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:open__fashion__app/core/components/text.dart' show CustomText;
import 'package:open__fashion__app/core/theming/colors/app_colors.dart';
import 'package:open__fashion__app/features/home/data/product_model.dart';

class CheckoutProductName extends StatelessWidget {
  final ProductModel product;
  final double sizedBoxWith;
  const CheckoutProductName({
    super.key,
    required this.product,
    required this.sizedBoxWith,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: sizedBoxWith,
      child: CustomText(
        text: product.name,
        color: AppColors.mainBlack,
        fontSize: 14.sp,
        fontWeight: FontWeight.bold,
        letterSpace: 1.5,
        overFlow: TextOverflow.ellipsis,
      ),
    );
  }
}

class CheckoutProductDesciption extends StatelessWidget {
  final ProductModel product;
  final double sizedBoxWith;
  const CheckoutProductDesciption({
    super.key,
    required this.product,
    required this.sizedBoxWith,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: sizedBoxWith,

      child: CustomText(
        text: product.description,
        fontSize: 12.sp,
        color: AppColors.mainLightGrey,
        maxLine: 2,
        overFlow: TextOverflow.ellipsis,
      ),
    );
  }
}

class CheckoutProductPrice extends StatelessWidget {
  final ProductModel product;
  const CheckoutProductPrice({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return CustomText(
      text: '\$${product.price}',
      fontSize: 16.sp,
      color: AppColors.mainOrange,
      fontWeight: FontWeight.bold,
    );
  }
}
