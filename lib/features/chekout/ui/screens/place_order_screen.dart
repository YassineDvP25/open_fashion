import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:open__fashion__app/core/components/text.dart';
import 'package:open__fashion__app/core/helpers/spacing.dart';
import 'package:open__fashion__app/core/theming/colors/app_colors.dart';
import 'package:open__fashion__app/core/widgets/custom_app_bar.dart';
import 'package:open__fashion__app/core/widgets/header.dart';
import 'package:open__fashion__app/features/chekout/logic/cubit/checkout_cubit.dart';
import 'package:open__fashion__app/features/chekout/ui/widgets/checkout/checkout_bottom_screen_button.dart';
import 'package:open__fashion__app/features/chekout/ui/widgets/checkout/checkout_product_price_total.dart';
import 'package:open__fashion__app/features/chekout/ui/widgets/place_order/place_order_client_information.dart';
import 'package:open__fashion__app/features/chekout/ui/widgets/place_order/place_order_methode_container.dart';
import 'package:open__fashion__app/features/home/data/product_model.dart';

class PlaceOrder extends StatelessWidget {
  final String clientFirstName;
  final String clientLastName;
  final String adress;
  final String city;
  final String state;
  final String zipCode;
  final String phoneNumber;

  final ProductModel productModel;

  final int totalPrice;
  final int productQuntity;
  const PlaceOrder({
    super.key,

    required this.totalPrice,
    required this.productQuntity,
    required this.productModel,
    required this.clientFirstName,
    required this.clientLastName,
    required this.adress,
    required this.city,
    required this.state,
    required this.zipCode,
    required this.phoneNumber,
  });

  @override
  Widget build(BuildContext context) {
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
                    Header(text: 'Place Order'.toUpperCase()),
                    verticalSpace(20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //Shipping Adress Text
                        CustomText(
                          text: 'Shipping adress'.toUpperCase(),
                          color: AppColors.grayScaleHoder,
                          fontSize: 19,
                        ),
                        verticalSpace(10),
                        //! Client information
                        PlaceOrderClientInformation(
                          clientFirstName: clientFirstName,
                          clientLastName: clientLastName,
                          adress: adress,
                          city: city,
                          state: state,
                          zipCode: zipCode,
                          phoneNumber: phoneNumber,
                        
                        ),

                        verticalSpace(30),
                        CustomText(
                          text: 'Shipping Methode'.toUpperCase(),
                          color: AppColors.grayScaleHoder,
                          fontSize: 19,
                        ),
                        verticalSpace(10),
                        PlaceOrderMethodeContainer(
                          text: 'Pickup at store',
                          isFreeTextFoundd: true,
                          icon: Icons.keyboard_arrow_down,
                        ),
                        verticalSpace(30),
                        CustomText(
                          text: 'Payment Methode'.toUpperCase(),
                          color: AppColors.grayScaleHoder,
                          fontSize: 19,
                        ),
                        verticalSpace(10),

                        PlaceOrderMethodeContainer(
                          text: 'Select Payment Methode',
                          isFreeTextFoundd: false,
                          icon: Icons.keyboard_arrow_down,
                        ),
                      ],
                    ),
                    Spacer(),
                    CheckoutProductPriceTotal(
                      price: totalPrice == 0 ? productModel.price : totalPrice,
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
