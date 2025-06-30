import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:open__fashion__app/features/home/data/product_model.dart';

class CheckoutProductImage extends StatelessWidget {
final   ProductModel product;
  const CheckoutProductImage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 100.w,
          height: 130.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(product.image),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Container(
          width: 100.w,
          height: 130.h,
          decoration: BoxDecoration(
            color: Colors.black.withValues(alpha: 0.15),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ],
    );
  }
}
