import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:open__fashion__app/core/helpers/spacing.dart';
import 'package:open__fashion__app/core/widgets/custom_app_bar.dart';
import 'package:open__fashion__app/core/widgets/header.dart';
import 'package:open__fashion__app/features/chekout/ui/screens/payment_methode_screen.dart';
import 'package:open__fashion__app/features/chekout/ui/screens/place_order_screen.dart';
import 'package:open__fashion__app/features/chekout/ui/widgets/checkout/checkout_bottom_screen_button.dart';
import 'package:open__fashion__app/features/chekout/ui/widgets/shipping_adress_text_form_fields.dart';
import 'package:open__fashion__app/features/home/data/product_model.dart';

class ShippingAdress extends StatefulWidget {
  final ProductModel? productModel;
  final int? totalPrice;
  final int? productQuntity;
  final Map? clientInformation;
  final String? previousRoute;
  final Map? creditCardInformation;

  const ShippingAdress({
    super.key,
    this.productModel,
    this.totalPrice,
    this.productQuntity,
    this.clientInformation,
    this.previousRoute, this.creditCardInformation,
  });

  @override
  State<ShippingAdress> createState() => _ShippingAdressState();
}

class _ShippingAdressState extends State<ShippingAdress> {
  GlobalKey<FormState> globalKey = GlobalKey();
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController city = TextEditingController();
  TextEditingController state = TextEditingController();
  TextEditingController zip = TextEditingController();
  TextEditingController phone = TextEditingController();
  FormState key = FormState();

  @override
  void dispose() {
    firstName.dispose();
    lastName.dispose();
    address.dispose();
    city.dispose();
    state.dispose();
    zip.dispose();
    phone.dispose();
    super.dispose();
  }

  @override
  void initState() {
    print(
      '==================${widget.previousRoute}=============================',
    );
    if (widget.clientInformation!.isNotEmpty) {
      firstName.text = widget.clientInformation!['clientFirstName'];
      lastName.text = widget.clientInformation!['clientLastName'];
      address.text = widget.clientInformation!['adress'];
      city.text = widget.clientInformation!['city'];
      state.text = widget.clientInformation!['state'];
      zip.text = widget.clientInformation!['zipCode'];
      phone.text = widget.clientInformation!['phoneNumber'];
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: CustomAppBar(isBlacke: false),

        body: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0).w,
                child: Form(
                  key: globalKey,

                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        verticalSpace(25),
                        Header(text: 'Shipping Adress'.toUpperCase()),
                        verticalSpace(30),

                        ShippingAdressTextFormFields(
                          firstNameController: firstName,
                          lastNameController: lastName,
                          addressController: address,
                          cityController: city,
                          stateController: state,
                          zipCodeController: zip,
                          phoneController: phone,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            // //!Place Order button
            CheckoutBottomScreenButton(
              isSvgg: true,
              text: 'Add Now',
              onTap: () {
                if (globalKey.currentState!.validate() &&
                    widget.previousRoute! == 'Chekout') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:
                          (context) => PaymentMethode(
                            productModel: widget.productModel!,
                            totalPrice: widget.totalPrice!,
                            productQuntity: widget.productQuntity!,
                            clientFirstName: firstName.text,
                            clientLastName: lastName.text,
                            adress: address.text,
                            city: city.text,
                            statee: state.text,
                            zipCode: zip.text,
                            phoneNumber: phone.text,
                          ),
                    ),
                  );
                } else if (globalKey.currentState!.validate() &&
                    widget.previousRoute! == 'PlaceOrder') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:
                          (context) => PlaceOrder(
                            productModel: widget.productModel!,
                            totalPrice: widget.totalPrice!,
                            productQuntity: widget.productQuntity!,
                            clientFirstName: firstName.text,
                            clientLastName: lastName.text,
                            adress: address.text,
                            city: city.text,
                            statee: state.text,
                            zipCode: zip.text,
                            phoneNumber: phone.text,
                            previousRoute: 'ShippingAdress',
                            creditCardInformation: {
                              'creditCardBrandName': widget.creditCardInformation!['creditCardBrandName'],
                              'lastTwoDigitsFromCardNumber': widget.creditCardInformation!['lastTwoDigitsFromCardNumber'],
                            },
                          ),
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
