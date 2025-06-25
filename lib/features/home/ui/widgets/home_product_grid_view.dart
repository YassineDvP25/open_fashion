import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:open__fashion__app/core/components/text.dart';
import 'package:open__fashion__app/core/helpers/spacing.dart';
import 'package:open__fashion__app/features/home/data/product_model.dart';
import 'package:open__fashion__app/features/home/ui/widgets/home_product.dart';

class HomeProductGridView extends StatelessWidget {
  const HomeProductGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: ProductModel.products.length,

      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 0.w,
        crossAxisSpacing: 2.w,
        childAspectRatio: 0.6,
      ),
      itemBuilder: (context, index) {
        return HomeProduct(index: index);
      },
    );
  }
}
