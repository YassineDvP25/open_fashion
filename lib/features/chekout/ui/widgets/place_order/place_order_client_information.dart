import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:open__fashion__app/core/components/text.dart';
import 'package:open__fashion__app/core/helpers/spacing.dart';
import 'package:open__fashion__app/core/theming/colors/app_colors.dart';
import 'package:open__fashion__app/features/chekout/ui/screens/shipping_adress_screen.dart';
import 'package:open__fashion__app/features/home/data/product_model.dart';

class PlaceOrderClientInformation extends StatelessWidget {
  final String clientFirstName;
  final String clientLastName;
  final String adress;
  final String city;
  final String state;
  final String zipCode;
  final String phoneNumber;
  final ProductModel productModel;
  final int totalPrice;
  final int productQuantity;
  final String creditCardBrandName;
  final String lastTwoDigitsFromCardNumber;

  const PlaceOrderClientInformation({
    super.key,
    required this.clientFirstName,
    required this.clientLastName,
    required this.adress,
    required this.city,
    required this.state,
    required this.zipCode,
    required this.phoneNumber,
    required this.productModel,
    required this.totalPrice,
    required this.productQuantity,
    required this.creditCardBrandName,
    required this.lastTwoDigitsFromCardNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10).w,

      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              CustomText(
                text: '$clientFirstName $clientLastName',
                color: AppColors.mainDarkGrey,
                fontSize: 23,
                fontWeight: FontWeight.w600,
              ),
              verticalSpace(5),
              CustomText(
                text: '$adress $city ',
                color: AppColors.grayScaleLabel,
              ),
              verticalSpace(3),
              CustomText(
                text: '$state $zipCode',
                color: AppColors.grayScaleLabel,
              ),
              verticalSpace(3),

              CustomText(text: phoneNumber, color: AppColors.grayScaleLabel),
              verticalSpace(15),
            ],
          ),
          Spacer(),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (route) {
                    return ShippingAdress(
                      productModel: productModel,
                      totalPrice: totalPrice,
                      productQuntity: productQuantity,
                      clientInformation: {
                        'clientFirstName': clientFirstName,
                        'clientLastName': clientLastName,
                        'adress': adress,
                        'city': city,
                        'state': state,
                        'zipCode': zipCode,
                        'phoneNumber': phoneNumber,
                      },
                      previousRoute: 'PlaceOrder',

                      
                      creditCardInformation: {
                        'creditCardBrandName': creditCardBrandName,
                        'lastTwoDigitsFromCardNumber':
                            lastTwoDigitsFromCardNumber,
                      },
                    );
                  },
                ),
              );
            },
            icon: Icon(
              Icons.chevron_right,
              size: 30,
              color: AppColors.grayScaleHoder,
            ),
          ),
        ],
      ),
    );
  }
}
