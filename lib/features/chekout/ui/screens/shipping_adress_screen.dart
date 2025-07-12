import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:open__fashion__app/core/helpers/spacing.dart';
import 'package:open__fashion__app/core/widgets/custom_app_bar.dart';
import 'package:open__fashion__app/core/widgets/header.dart';
import 'package:open__fashion__app/features/chekout/ui/screens/place_order_screen.dart';
import 'package:open__fashion__app/features/chekout/ui/widgets/checkout/checkout_bottom_screen_button.dart';
import 'package:open__fashion__app/features/chekout/ui/widgets/shipping_adress_text_form_fields.dart';
import 'package:open__fashion__app/features/home/data/product_model.dart';

class ShippingAdress extends StatefulWidget {
  final ProductModel productModel;
  final int totalPrice;
  final int productQuntity;

  const ShippingAdress({
    super.key,
    required this.productModel,
    required this.totalPrice,
    required this.productQuntity,
  });

  @override
  State<ShippingAdress> createState() => _ShippingAdressState();
}

class _ShippingAdressState extends State<ShippingAdress> {
  GlobalKey<FormState> globalKey = GlobalKey();
  final _firstName = TextEditingController();
  final _lastName = TextEditingController();
  final _address = TextEditingController();
  final _city = TextEditingController();
  final _state = TextEditingController();
  final _zip = TextEditingController();
  final _phone = TextEditingController();
  FormState key = FormState();
  @override
  void dispose() {
    _firstName.dispose();
    _lastName.dispose();
    _address.dispose();
    _city.dispose();
    _state.dispose();
    _zip.dispose();
    _phone.dispose();
    super.dispose();
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
                        Header(text: 'Shipping Adress'.toUpperCase() ),
                        verticalSpace(30),

                        ShippingAdressTextFormFields(
                          firstNameController: _firstName,
                          lastNameController: _lastName,
                          addressController: _address,
                          cityController: _city,
                          stateController: _state,
                          zipCodeController: _zip,
                          phoneController: _phone,
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
                if (globalKey.currentState!.validate()) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:
                          (context) => PlaceOrder(
                            productModel: widget.productModel,
                            totalPrice: widget.totalPrice,
                            productQuntity: widget.productQuntity,
                            clientFirstName: _firstName.text,
                            clientLastName: _lastName.text,
                            adress: _address.text,
                            city: _city.text,
                            state: _state.text,
                            zipCode: _zip.text,
                            phoneNumber: _phone.text,
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
