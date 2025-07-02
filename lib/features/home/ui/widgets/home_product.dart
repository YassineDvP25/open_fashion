import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:open__fashion__app/core/components/text.dart';
import 'package:open__fashion__app/core/helpers/spacing.dart';
import 'package:open__fashion__app/features/chekout/ui/screens/checkout_screen.dart';
import 'package:open__fashion__app/features/home/data/product_model.dart';
import 'package:open__fashion__app/features/home/ui/widgets/home_product_image.dart';
import 'package:open__fashion__app/features/home/ui/widgets/home_product_price_and_rating.dart';

class HomeProduct extends StatelessWidget {
  final int index;
  const HomeProduct({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final product = ProductModel.products[index];

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Chekout(product: product)),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HomeProductImage(product: product),

          verticalSpace(10),
          CustomText(
            text: product.description,
            color: Color(0xffF9F9F9),
            fontSize: 10.sp,
            maxLine: 1,
            overFlow: TextOverflow.ellipsis
          ),
          verticalSpace(20),
          CustomText(text: product.name, fontWeight: FontWeight.bold),
          verticalSpace(5),

          HomeProductPriceAndRating(product: product),
          Divider(
            color: Colors.white.withValues(alpha: 0.3),
            thickness: 0.5,
            height: 20.h,
          ),
        ],
      ),
    );
  }
}
