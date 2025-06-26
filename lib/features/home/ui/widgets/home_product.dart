import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:open__fashion__app/core/components/text.dart';
import 'package:open__fashion__app/core/helpers/spacing.dart';
import 'package:open__fashion__app/features/home/data/product_model.dart';

class HomeProduct extends StatelessWidget {
  final int index;
  const HomeProduct({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final product = ProductModel.products[index];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        
        Container(
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5.r ),
          ),
    
          child: Image.asset(product.image),
        ),
        verticalSpace(10),
        CustomText(text: product.name, fontWeight: FontWeight.bold),
        verticalSpace(5),
        CustomText(
          text: product.description,
          color: Color(0xffF9F9F9),
          fontSize: 10.sp,
        ),
    
        verticalSpace(10),
        CustomText(text: '\$${product.price}', fontSize: 15.sp),
      ],
    );
  }
}
