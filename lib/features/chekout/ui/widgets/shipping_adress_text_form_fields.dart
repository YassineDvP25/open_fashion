import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:open__fashion__app/core/components/text.dart';
import 'package:open__fashion__app/core/helpers/spacing.dart';
import 'package:open__fashion__app/core/theming/colors/app_colors.dart';

class ShippingAdressTextFormFields extends StatelessWidget {
  final TextEditingController firstNameController;
  final TextEditingController lastNameController;
  final TextEditingController addressController;
  final TextEditingController cityController;
  final TextEditingController stateController;
  final TextEditingController zipCodeController;
  final TextEditingController phoneController;
  const ShippingAdressTextFormFields({
    super.key,
    required this.firstNameController,
    required this.lastNameController,
    required this.addressController,
    required this.cityController,
    required this.stateController,
    required this.zipCodeController,
    required this.phoneController,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'This Field is requeired';
                    }
                  },
      
                  controller: firstNameController,
                  decoration: InputDecoration(label: labelText('First name')),
                ),
              ),
              horizantalSpace(20),
      
              Expanded(
                child: TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'This Field is requeired';
                    }
                  },
                  controller: lastNameController,
                  decoration: InputDecoration(label: labelText('Last name')),
                ),
              ),
            ],
          ),
          verticalSpace(25),
      
          TextFormField(
            validator: (value) {
              if (value!.isEmpty) {
                return 'This Field is requeired';
              }
            },
            controller: addressController,
            decoration: InputDecoration(label: labelText('Adress')),
          ),
          verticalSpace(25),
      
          TextFormField(
            validator: (value) {
              if (value!.isEmpty) {
                return 'This Field is requeired';
              }
            },
            controller: cityController,
            decoration: InputDecoration(label: labelText('City')),
          ),
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'This Field is requeired';
                    }
                  },
                  controller: stateController,
                  decoration: InputDecoration(label: labelText('State')),
                ),
              ),
              horizantalSpace(20),
      
              Expanded(
                child: TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'This Field is requeired';
                    }
                  },
                  controller: zipCodeController,
                  decoration: InputDecoration(label: labelText('Zip Code')),
                ),
              ),
            ],
          ),
          verticalSpace(25),
      
          TextFormField(
            validator: (value) {
              if (value!.isEmpty) {
                return 'This Field is requeired';
              }
            },
            controller: phoneController,
            decoration: InputDecoration(label: labelText('Phone Number')),
            keyboardType: TextInputType.phone,
          ),
        ],
      ),
    );
  }

  Widget labelText(text) {
    return CustomText(
      text: text,
      color: AppColors.grayScaleHoder,
      fontSize: 17,
    );
  }
}
