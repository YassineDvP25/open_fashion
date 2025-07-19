import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:open__fashion__app/core/helpers/spacing.dart';
import 'package:open__fashion__app/core/widgets/custom_app_bar.dart';
import 'package:open__fashion__app/core/widgets/header.dart';
import 'package:open__fashion__app/features/chekout/logic/cubit/checkout_cubit.dart';
import 'package:open__fashion__app/features/chekout/ui/screens/place_order_screen.dart';
import 'package:open__fashion__app/features/chekout/ui/widgets/checkout/checkout_bottom_screen_button.dart';
import 'package:open__fashion__app/features/chekout/ui/widgets/payment/credit_card_form.dart';
import 'package:open__fashion__app/features/chekout/ui/widgets/payment/credit_card_widget.dart';
import 'package:open__fashion__app/features/home/data/product_model.dart';

class PaymentMethode extends StatelessWidget {
  final ProductModel productModel;
  final int totalPrice;
  final int productQuntity;
  final String clientFirstName;
  final String clientLastName;
  final String adress;
  final String city;
  final String statee;
  final String zipCode;
  final String phoneNumber;
  const PaymentMethode({
    super.key,
    required this.productModel,
    required this.totalPrice,
    required this.productQuntity,
    required this.clientFirstName,
    required this.clientLastName,
    required this.adress,
    required this.city,
    required this.statee,
    required this.zipCode,
    required this.phoneNumber,
  });

  @override
  Widget build(BuildContext context) {
    var formKey = GlobalKey<FormState>();
    CreditCardBrand creditCardBrand = CreditCardBrand(CardType.visa);

    return Scaffold(
      appBar: CustomAppBar(isBlacke: false),
      body: BlocProvider(
        create: (context) => CheckoutCubit(),
        child: BlocBuilder<CheckoutCubit, CheckoutState>(
          builder: (context, state) {
            return Column(
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

                          verticalSpace(20),
                          //! Credit Card Widget
                          CreditCardeWidget(
                            onCreditCardWidgetChange: (CreditCardBrand brand) {
                              creditCardBrand = brand;
                            },
                          ),
                          verticalSpace(30),
                          //! Credit Card Form
                          CreditCardeForm(formKey: formKey),
                        ],
                      ),
                    ),
                  ),
                ),
                CheckoutBottomScreenButton(
                  isSvgg: false,
                  text: 'Add Card',
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:
                              (route) => PlaceOrder(
                                totalPrice: totalPrice,
                                productQuntity: productQuntity,
                                productModel: productModel,
                                clientFirstName: clientFirstName,
                                clientLastName: clientLastName,
                                adress: adress,
                                city: city,
                                statee: statee,
                                zipCode: zipCode,
                                phoneNumber: phoneNumber,
                                creditCardBrand: creditCardBrand,
                                creditCardNumber: state.cardNumber,
                                previousRoute: 'PaymentMethode',
                              ),
                        ),
                      );
                    }
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
