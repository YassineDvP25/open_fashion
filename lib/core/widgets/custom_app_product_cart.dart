import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:open__fashion__app/core/helpers/spacing.dart';
import 'package:open__fashion__app/features/chekout/ui/widgets/checkout/checkout_product(name,description,counter,price.dart';
import 'package:open__fashion__app/features/chekout/ui/widgets/checkout/checkout_product_image.dart';
import 'package:open__fashion__app/features/chekout/ui/widgets/checkout/products_counter.dart';
import 'package:open__fashion__app/features/home/data/product_model.dart';

class CustomAppProductCart extends StatelessWidget {
  final ProductModel product;
  const CustomAppProductCart({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
        MediaQueryData mediaQuery = MediaQuery.of(context);

    return   Row(
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
                    );
  }
}