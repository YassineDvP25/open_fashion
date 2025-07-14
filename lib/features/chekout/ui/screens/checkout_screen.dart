import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:open__fashion__app/core/helpers/spacing.dart';
import 'package:open__fashion__app/core/widgets/custom_app_bar.dart';
import 'package:open__fashion__app/core/widgets/custom_app_product_cart.dart';
import 'package:open__fashion__app/core/widgets/header.dart';
import 'package:open__fashion__app/features/chekout/logic/cubit/checkout_cubit.dart';
import 'package:open__fashion__app/features/chekout/ui/screens/shipping_adress_screen.dart';
import 'package:open__fashion__app/features/chekout/ui/widgets/checkout/checkout_bottom_screen_button.dart';
import 'package:open__fashion__app/features/chekout/ui/widgets/checkout/checkout_product(name,description,counter,price.dart';
import 'package:open__fashion__app/features/chekout/ui/widgets/checkout/checkout_product_image.dart';
import 'package:open__fashion__app/features/chekout/ui/widgets/checkout/checkout_product_price_total.dart';
import 'package:open__fashion__app/features/chekout/ui/widgets/checkout/checkout_promo_and_delevery.dart';
import 'package:open__fashion__app/features/chekout/ui/widgets/checkout/products_counter.dart';
import 'package:open__fashion__app/features/home/data/product_model.dart';

class Chekout extends StatelessWidget {
  final ProductModel product;
  const Chekout({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    //media query

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
                    Header(text: 'Checkout'.toUpperCase() , dividerWidth: 120,),
                    verticalSpace(20),
                    //!Custom app product cart
                    CustomAppProductCart(product: product),

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
                            (route) =>  ShippingAdress(
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
