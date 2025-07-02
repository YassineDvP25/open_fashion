import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:open__fashion__app/core/components/text.dart';
import 'package:open__fashion__app/core/helpers/spacing.dart';
import 'package:open__fashion__app/core/theming/colors/app_colors.dart';

class PlaceOrderClientInformation extends StatelessWidget {
  const PlaceOrderClientInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return   Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10).w,

                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,

                                children: [
                                  CustomText(
                                    text: 'Iris Watson',
                                    color: AppColors.mainDarkGrey,
                                    fontSize: 23,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  verticalSpace(5),
                                  CustomText(
                                    text: '606-3727 Ullamcorper.Street',
                                    color: AppColors.grayScaleLabel,
                                  ),
                                  verticalSpace(3),
                                  CustomText(
                                    text: 'Roseville NH 11523',
                                    color: AppColors.grayScaleLabel,
                                  ),
                                  verticalSpace(3),

                                  CustomText(
                                    text: '(786) 713-8616',
                                    color: AppColors.grayScaleLabel,
                                  ),
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
                        );
  }
}