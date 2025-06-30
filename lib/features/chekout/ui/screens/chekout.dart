import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:open__fashion__app/core/components/text.dart';
import 'package:open__fashion__app/core/helpers/spacing.dart';
import 'package:open__fashion__app/core/theming/colors/app_colors.dart';
import 'package:open__fashion__app/core/widgets/custom_app_bar.dart';
import 'package:open__fashion__app/core/widgets/header.dart';
import 'package:open__fashion__app/features/chekout/ui/widgets/checkout_product_image.dart';
import 'package:open__fashion__app/features/chekout/ui/widgets/products_counter.dart';
import 'package:open__fashion__app/features/home/data/product_model.dart';

class Chekout extends StatefulWidget {
  final ProductModel product;
  const Chekout({super.key, required this.product});

  @override
  State<Chekout> createState() => _ChekoutState();
}

class _ChekoutState extends State<Chekout> {
  int counterNumber = 1;

  @override
  Widget build(BuildContext context) {
    //media query
    MediaQueryData mediaQuery = MediaQuery.of(context);

    return Scaffold(
      appBar: CustomAppBar(isBlacke: false),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0).w,
        child: Column(
          children: [
            verticalSpace(25),
            Header(text: 'Checkout'.toUpperCase()),
            verticalSpace(20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CheckoutProductImage(product: widget.product),

                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10).w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      verticalSpace(10),
                      SizedBox(
                        width: mediaQuery.size.width * 0.5,
                        child: CustomText(
                          text: widget.product.name.toUpperCase(),
                          color: AppColors.mainBlack,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                          letterSpace: 1.5,
                          overFlow: TextOverflow.ellipsis,
                        ),
                      ),
                      verticalSpace(5),
                      SizedBox(
                        width: mediaQuery.size.width * 0.5,

                        child: CustomText(
                          text: widget.product.description,
                          fontSize: 12.sp,
                          color: AppColors.mainLightGrey,
                          maxLine: 2,
                          overFlow: TextOverflow.ellipsis,
                        ),
                      ),

                      verticalSpace(10),
                    ProductsCounter(counterNumber: counterNumber,
                        oOnIncrement: () {
                          setState(() {
                            counterNumber++;
                          });
                        },
                        onDecrement: () {
                          if (counterNumber > 1) {
                            setState(() {
                              counterNumber--;
                            });
                          }
                        }),

                        verticalSpace(10),
                        CustomText(text: '\$${widget.product.price }',
                          fontSize: 16.sp,
                          color: AppColors.mainOrange,
                          fontWeight: FontWeight.bold,
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

