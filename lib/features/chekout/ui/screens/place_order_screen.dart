import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:open__fashion__app/core/helpers/spacing.dart';
import 'package:open__fashion__app/core/theming/colors/app_colors.dart';
import 'package:open__fashion__app/core/widgets/custom_app_bar.dart';
import 'package:open__fashion__app/core/widgets/custom_app_product_cart.dart';
import 'package:open__fashion__app/core/widgets/header.dart';
import 'package:open__fashion__app/features/chekout/logic/cubit/checkout_cubit.dart';
import 'package:open__fashion__app/features/chekout/ui/widgets/checkout/checkout_bottom_screen_button.dart';
import 'package:open__fashion__app/features/chekout/ui/widgets/checkout/checkout_product_price_total.dart';
import 'package:open__fashion__app/features/chekout/ui/widgets/place_order/bottom_shet_payment_succes.dart';
import 'package:open__fashion__app/features/chekout/ui/widgets/place_order/master_card_ending_and_brand.dart';
import 'package:open__fashion__app/features/chekout/ui/widgets/place_order/place_order_client_information.dart';
import 'package:open__fashion__app/features/home/data/product_model.dart';

class PlaceOrder extends StatelessWidget {
  final String? clientFirstName;
  final String? clientLastName;
  final String? adress;
  final String? city;
  final String? statee;
  final String? zipCode;
  final String? phoneNumber;
  final Map? creditCardInformation;

  final CreditCardBrand? creditCardBrand;
  final String creditCardNumber;
  final String? previousRoute;

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
    this.statee,
    this.zipCode,
    this.phoneNumber,
    this.creditCardBrand,
    this.creditCardNumber = '',
    this.creditCardInformation,
    this.previousRoute,
  });

  @override
  Widget build(BuildContext context) {
    String creditCardBrandName = creditCardBrandNamefunc();

    String lastTwoDigitsFromCardNumber = lastTwoDigitsFromCardNumbefunc();

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
                          state: statee!,
                          zipCode: zipCode!,
                          phoneNumber: phoneNumber!,
                          productModel: productModel!,
                          totalPrice: totalPrice!,
                          productQuantity: productQuntity!,
                          creditCardBrandName: creditCardBrandName,
                          lastTwoDigitsFromCardNumber:
                              lastTwoDigitsFromCardNumber,
                        ),

                        verticalSpace(10),

                        //! Master Card ending and brand
                        Divider(
                          color: AppColors.grayScaleHoder,
                          thickness: 0.5,
                        ),
                        MasterCardEndingAndBrand(
                          lastTwoDigitsFromCardNumber:
                              lastTwoDigitsFromCardNumber,
                          creditCardBrandName: creditCardBrandName,
                        ),
                        Divider(
                          color: AppColors.grayScaleHoder,
                          thickness: 0.5,
                        ),

                        verticalSpace(10),
                        //! Product Cart
                        CustomAppProductCart(product: productModel!),
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
              text: 'Checkout',
              onTap: () {
                showModalBottomSheet(
                  isDismissible :false,
                  enableDrag :false,


                  context: context,
                  builder: (context) {
                    return BottomShetPaymentSucces();
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  String creditCardBrandNamefunc() {
    return previousRoute == 'ShippingAdress'
        ? creditCardInformation!['creditCardBrandName']
        : creditCardBrand!.brandName.toString().substring(9);
  }

  String lastTwoDigitsFromCardNumbefunc() {
    return previousRoute == 'ShippingAdress'
        ? creditCardInformation!['lastTwoDigitsFromCardNumber']
        : creditCardNumber.length > 2
        ? creditCardNumber.substring(creditCardNumber.length - 2)
        : creditCardNumber;
  }
}
