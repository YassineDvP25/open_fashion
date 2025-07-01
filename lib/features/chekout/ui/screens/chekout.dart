import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:open__fashion__app/core/helpers/spacing.dart';
import 'package:open__fashion__app/core/widgets/custom_app_bar.dart';
import 'package:open__fashion__app/core/widgets/header.dart';
import 'package:open__fashion__app/features/chekout/ui/widgets/checkout_bottom_screen_button.dart';
import 'package:open__fashion__app/features/chekout/ui/widgets/checkout_product(name,description,counter,price.dart';
import 'package:open__fashion__app/features/chekout/ui/widgets/checkout_product_image.dart';
import 'package:open__fashion__app/features/chekout/ui/widgets/checkout_product_price_total.dart';
import 'package:open__fashion__app/features/chekout/ui/widgets/checkout_promo_and_delevery.dart';
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
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0).w,
              child: Column(
                children: [
                  verticalSpace(25),
                  Header(text: 'Checkout'.toUpperCase()),
                  verticalSpace(20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //!product image
                      CheckoutProductImage(product: widget.product),

                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10).w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            verticalSpace(10),

                            //!prduct name
                            CheckoutProductName(
                              product: widget.product,
                              sizedBoxWith: mediaQuery.size.width * 0.5,
                            ),

                            verticalSpace(5),
                            //!product description
                            CheckoutProductDesciption(
                              product: widget.product,
                              sizedBoxWith: mediaQuery.size.width * 0.5,
                            ),

                            verticalSpace(10),
                            //!product counter
                            ProductsCounter(
                              counterNumber: counterNumber,
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
                              },
                            ),

                            verticalSpace(10),
                            //!product price
                            CheckoutProductPrice(product: widget.product),
                          ],
                        ),
                      ),
                    ],
                  ),

                  verticalSpace(10),
                  //!checkout promo and delivery
                  CheckoutPromoAndDelevery(),

                  Spacer(),

                  //!checkout product price total
                  CheckoutProductPriceTotal(
                    counterNumber: counterNumber,
                    price: int.parse(widget.product.price),
                  ),
                ],
              ),
            ),
          ),

          //!checkout button
          CheckoutBottomScreenButton(isSvgg: true, text: 'Checkout'),
        ],
      ),
    );
  }
}
