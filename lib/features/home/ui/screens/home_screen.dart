import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:open__fashion__app/core/helpers/spacing.dart';
import 'package:open__fashion__app/core/helpers/textstyles.dart';
import 'package:open__fashion__app/core/theming/colors/app_colors.dart';
import 'package:open__fashion__app/core/widgets/custom_app_bar.dart';
import 'package:open__fashion__app/features/home/ui/widgets/home_display_image.dart';
import 'package:open__fashion__app/features/home/ui/widgets/home_product_grid_view.dart';

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
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0).w,
              child: Column(
                children: [
                  verticalSpace(115),
                  HomeDisplayImage(),
                  verticalSpace(20),
                  HomeProductGridView(),

                  verticalSpace(50),
                  Text(
                    'You may also like'.toUpperCase(),
                    style: TextStyles.whiteFont25TenorSans
                  ),
                  verticalSpace(10),
                  SvgPicture.asset('assets/texts/home_devider.svg',width: 160.w,),
                  verticalSpace(50),
                  
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
