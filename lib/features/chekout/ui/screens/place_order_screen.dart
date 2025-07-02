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
import 'package:open__fashion__app/features/chekout/ui/widgets/place_order/place_order_client_information.dart';
import 'package:open__fashion__app/features/chekout/ui/widgets/place_order/place_order_methode_container.dart';

class PlaceOrderScreen extends StatelessWidget {
  final String image;
  final String name;
  final String description;
  final int price;
  final int totalPrice;
  final int productQuntity;
  const PlaceOrderScreen({
    super.key,
    required this.image,
    required this.name,
    required this.description,
    required this.price,
    required this.totalPrice,
    required this.productQuntity,
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
                    Header(text: 'Checkout'.toUpperCase()),
                    verticalSpace(20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: 'Shipping adress'.toUpperCase(),
                          color: AppColors.grayScaleHoder,
                          fontSize: 20,
                        ),
                        verticalSpace(10),
                        //! Client information
                        PlaceOrderClientInformation(),
                      

                        verticalSpace(10),
                        PlaceOrderMethodeContainer()

                        
                      ],
                    ),
                  ],
                ),
              ),
            ),

            // //!checkout button
            BlocBuilder<CheckoutCubit, CheckoutState>(
              builder: (context, state) {
                return CheckoutBottomScreenButton(
                  isSvgg: true,
                  text: 'Place Order',
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
