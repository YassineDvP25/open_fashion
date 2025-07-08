import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:open__fashion__app/core/helpers/spacing.dart';
import 'package:open__fashion__app/core/widgets/custom_app_bar.dart';
import 'package:open__fashion__app/core/widgets/header.dart';
import 'package:open__fashion__app/features/chekout/logic/cubit/checkout_cubit.dart';
import 'package:open__fashion__app/features/chekout/ui/screens/shipping_adress.dart';
import 'package:open__fashion__app/features/chekout/ui/widgets/checkout/checkout_bottom_screen_button.dart';
import 'package:open__fashion__app/features/chekout/ui/widgets/checkout/checkout_product(name,description,counter,price.dart';
import 'package:open__fashion__app/features/chekout/ui/widgets/checkout/checkout_product_image.dart';
import 'package:open__fashion__app/features/chekout/ui/widgets/checkout/checkout_product_price_total.dart';
import 'package:open__fashion__app/features/chekout/ui/widgets/checkout/checkout_promo_and_delevery.dart';
import 'package:open__fashion__app/features/chekout/ui/widgets/checkout/products_counter.dart';
import 'package:open__fashion__app/features/home/data/product_model.dart';
import 'package:open__fashion__app/features/chekout/ui/screens/place_order_screen.dart';

class Chekout extends StatelessWidget {
  final ProductModel product;
  const Chekout({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    //media query
    MediaQueryData mediaQuery = MediaQuery.of(context);

    return BlocProvider(
      create: (context) => CheckoutCubit(),
      child: Scaffold(
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
                        CheckoutProductImage(product: product),

                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10).w,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              verticalSpace(10),

                              //!prduct name
                              CheckoutProductName(
                                product: product,
                                sizedBoxWith: mediaQuery.size.width * 0.5,
                              ),

                              verticalSpace(5),
                              //!product description
                              CheckoutProductDesciption(
                                product: product,
                                sizedBoxWith: mediaQuery.size.width * 0.5,
                              ),

                              verticalSpace(10),
                              //!product counter
                              ProductsCounter(price: product.price),

                              verticalSpace(10),
                              //!product price
                              CheckoutProductPrice(product: product),
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
                    CheckoutProductPriceTotal(price: product.price),
                  ],
                ),
              ),
            ),

            //!checkout button
            BlocBuilder<CheckoutCubit, CheckoutState>(
              builder: (context, state) {
                return CheckoutBottomScreenButton(
                  isSvgg: true,
                  text: 'Checkout',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder:
                            (route) => ShippingAdress(
                              totalPrice: state.totalPrice,
                              productQuntity: state.quantityCounter,
                              productModel: product,
                            ),
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
