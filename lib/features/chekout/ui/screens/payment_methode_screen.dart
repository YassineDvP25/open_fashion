import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:open__fashion__app/core/helpers/spacing.dart';
import 'package:open__fashion__app/core/widgets/custom_app_bar.dart';
import 'package:open__fashion__app/core/widgets/header.dart';
import 'package:open__fashion__app/features/chekout/ui/widgets/checkout/checkout_bottom_screen_button.dart';
import 'package:open__fashion__app/features/chekout/ui/widgets/payment/credit_card_form.dart';
import 'package:open__fashion__app/features/chekout/ui/widgets/payment/credit_card_widget.dart';
import 'package:open__fashion__app/features/chekout/ui/widgets/payment/cubit/credit_card_cubit.dart';

class PaymentMethode extends StatelessWidget {
  const PaymentMethode({super.key});

  @override
  Widget build(BuildContext context) {
    var formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: CustomAppBar(isBlacke: false),
      body: BlocProvider(
        create: (context) => CreditCardCubit(),
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0).w,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      verticalSpace(25),
                      Header(
                        text: 'Payment Methode'.toUpperCase(),
                        dividerWidth: 120,
                      ),
                      BlocBuilder<CreditCardCubit, CreditCardState>(
                        builder: (context, state) {
                          return Column(
                            children: [
                              verticalSpace(20),
                              //! Credit Card Widget
                              CreditCardeWidget(),
                              verticalSpace(30),
                              //! Credit Card Form
                              CreditCardeForm(formKey: formKey),
                            ],
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            CheckoutBottomScreenButton(
              isSvgg: false,
              text: 'Add Card',
              onTap: () {
                // Add your navigation or logic here
              },
            ),
          ],
        ),
      ),
    );
  }
}
