import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:open__fashion__app/core/components/text.dart';
import 'package:open__fashion__app/core/helpers/spacing.dart';
import 'package:open__fashion__app/core/theming/colors/app_colors.dart';
import 'package:open__fashion__app/core/widgets/custom_app_bar.dart';
import 'package:open__fashion__app/core/widgets/custom_app_product_cart.dart';
import 'package:open__fashion__app/core/widgets/header.dart';
import 'package:open__fashion__app/features/chekout/logic/cubit/checkout_cubit.dart';
import 'package:open__fashion__app/features/chekout/ui/widgets/checkout/checkout_bottom_screen_button.dart';
import 'package:open__fashion__app/features/chekout/ui/widgets/checkout/checkout_product_price_total.dart';
import 'package:open__fashion__app/features/chekout/ui/widgets/place_order/place_order_client_information.dart';
import 'package:open__fashion__app/features/home/data/product_model.dart';

class PlaceOrder extends StatelessWidget {
  final String? clientFirstName;
  final String? clientLastName;
  final String? adress;
  final String? city;
  final String? state;
  final String? zipCode;
  final String? phoneNumber;
  final CreditCardBrand? creditCardBrand;
  final String creditCardNumber;

  final ProductModel? productModel;

  final int? totalPrice;
  final int? productQuntity;
  const PlaceOrder({
    super.key,

    this.totalPrice,
    this.productQuntity,
    this.productModel,
    this.clientFirstName,
    this.clientLastName,
    this.adress,
    this.city,
    this.state,
    this.zipCode,
    this.phoneNumber,
    this.creditCardBrand,
    this.creditCardNumber = '',
  });

  @override
  Widget build(BuildContext context) {
    String creditCardBrandName = creditCardBrand!.brandName
        .toString()
        .substring(9);
    String lastTwoDigitsFromCardNumber = creditCardNumber.substring(
      creditCardNumber.length - 2,
    );
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
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    verticalSpace(25),
                    Header(text: 'Checkout'.toUpperCase(), dividerWidth: 120),
                    verticalSpace(20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                    
                        //! Client information
                        PlaceOrderClientInformation(
                          clientFirstName: clientFirstName!,
                          clientLastName: clientLastName!,
                          adress: adress!,
                          city: city!,
                          state: state!,
                          zipCode: zipCode!,
                          phoneNumber: phoneNumber!,
                        ),

                        verticalSpace(10),
                      
                        Divider(
                          color: AppColors.grayScaleHoder,
                          thickness: 0.5,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0).w,
                          child: Row(
                            children: [
                              Container(
                                clipBehavior: Clip.antiAlias,
                          
                                width: 50.w,
                                height: 50.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(13.r),
                                ),
                                child: SvgPicture.asset(
                                  fit: BoxFit.fitWidth,
                                  width: 50.w,
                                  height: 50.h,
                                  'assets/svgs/card_brands/$creditCardBrandName.svg',
                                ),
                              ),
                          
                              horizantalSpace(10),
                          
                              CustomText(
                                text:
                                    'Master Card ending  ••••$lastTwoDigitsFromCardNumber',
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: AppColors.mainDarkGrey,
                              ),
                              Spacer(),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 15.sp,
                                  color: AppColors.mainDarkGrey,
                                ),
                              ),
                            ],
                          ),
                        ),
                          Divider(
                          color: AppColors.grayScaleHoder,
                          thickness: 0.5,
                        ),

                        verticalSpace(10),
                        CustomAppProductCart(
                          product: productModel!,
                        ),
                      
                      
                      ],
                    ),
                    Spacer(),
                    CheckoutProductPriceTotal(
                      price:
                          totalPrice == 0 ? productModel!.price : totalPrice!,
                    ),
                  ],
                ),
              ),
            ),

            // //!Place Order button
            CheckoutBottomScreenButton(
              isSvgg: true,
              text: 'Place Order',
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (route) =>  ),
                // );
              },
            ),
          ],
        ),
      ),
    );
  }
}
