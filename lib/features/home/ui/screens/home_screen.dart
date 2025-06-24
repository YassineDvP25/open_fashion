import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:open__fashion__app/core/helpers/spacing.dart';
import 'package:open__fashion__app/core/theming/colors/app_colors.dart';
import 'package:open__fashion__app/core/widgets/custom_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainBlack,
      appBar: CustomAppBar(),
      body: Stack(
        children: [
          Positioned(
            top: 20.h,
            right: 0.r,
            left: 0.r,

            child: SvgPicture.asset('assets/texts/10.svg'),
          ),
          Positioned(
            top: 50.h,
            right: 0,
            left: 0,
            child: Column(
              children: [
                SvgPicture.asset('assets/texts/October.svg'),
                verticalSpace(10),
                SvgPicture.asset('assets/texts/Collection.svg'),
              ],
            ),
          ),
          Column(
            children: [
              verticalSpace(115),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0).w,
                child: Image.asset('assets/cover/image 20.png'),
              )
            ],
          )
        ],
      ),
    );
  }
}
