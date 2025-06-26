import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:open__fashion__app/core/components/text.dart';
import 'package:open__fashion__app/core/helpers/spacing.dart';
import 'package:open__fashion__app/features/home/data/product_model.dart';

class HomeProductPriceAndRating extends StatelessWidget {
  final ProductModel product;
  const HomeProductPriceAndRating({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            CustomText(text: '\$${product.price}', fontSize: 15.sp),
            horizantalSpace(3),
            Text(
              '\$${int.parse(product.price) - 126}',
              style: TextStyle(
                fontSize: 7.sp,
                color: Colors.white,
                decoration: TextDecoration.lineThrough,
                decorationColor: Colors.white,
                decorationThickness: 2,
              ),
            ),
          ],
        ),
        // rating
        Spacer(),
        Row(
          children: [
            Icon(Icons.star, color: Colors.amber, size: 10.sp),
            horizantalSpace(3),
            CustomText(
              text:
                  '${product.price[0]}.${int.parse(product.price[0]) - 3}'
                      .toString(),
              fontSize: 10.sp,
            ),
          ],
        ),
      ],
    );
  }
}
