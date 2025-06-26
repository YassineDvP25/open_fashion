import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:open__fashion__app/features/home/data/product_model.dart';

class HomeProductImage extends StatelessWidget {
  final ProductModel product;
  const HomeProductImage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.w,
      height: 210.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(product.image),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
