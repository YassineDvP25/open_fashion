import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:open__fashion__app/core/components/text.dart';
import 'package:open__fashion__app/core/helpers/spacing.dart';
import 'package:open__fashion__app/core/theming/colors/app_colors.dart';

class PlaceOrderClientInformation extends StatelessWidget {
  final String clientFirstName;
  final String clientLastName;
  final String adress;
  final String city;
  final String state;
  final String zipCode;
  final String phoneNumber;
  const PlaceOrderClientInformation({
    super.key,
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
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10).w,

      child: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
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
              ],
            ),
            Spacer(),
            Icon(
              Icons.chevron_right,
              size: 30,
              color: AppColors.grayScaleHoder,
            ),
          ],
        ),
      ),
    );
  }
}
