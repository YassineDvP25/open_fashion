import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ionicons/ionicons.dart';
import 'package:open__fashion__app/core/helpers/spacing.dart';
import 'package:open__fashion__app/core/helpers/textstyles.dart';

class HomeBottomAppInformation extends StatelessWidget {
  const HomeBottomAppInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Ionicons.logo_twitter, color: Colors.white, size: 20.sp),
              horizantalSpace(40),
              Icon(Ionicons.logo_facebook, color: Colors.white, size: 20.sp),
              horizantalSpace(40),
              Icon(Ionicons.logo_instagram, color: Colors.white, size: 20.sp),
            ],
          ),
          verticalSpace(25),
          SvgPicture.asset('assets/texts/home_devider.svg', width: 120.w),
          verticalSpace(20),

          Text(
            'support@openui.design\n       +60 825 876\n08:00 - 22:00 - Everyday',
            style: TextStyle(
              fontFamily: 'TenorSans',
              color: Colors.white,
              fontSize: 15.sp,
              height: 2.5,
            ),
          ),
          verticalSpace(20),
          SvgPicture.asset('assets/texts/home_devider.svg', width: 120.w),
          verticalSpace(30),

          //about contact bloc
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: [
              Text('About', style: TextStyles.whiteFont13TenorSans),

              Text('Contact', style: TextStyles.whiteFont13TenorSans),
              Text('Blog', style: TextStyles.whiteFont13TenorSans),
            ],
          ),
          verticalSpace(20),
        ],
      ),
    );
  }
}
