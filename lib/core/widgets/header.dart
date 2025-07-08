import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:open__fashion__app/core/components/text.dart';
import 'package:open__fashion__app/core/theming/colors/app_colors.dart';

class Header extends StatelessWidget {
  final String text;

  const Header({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          CustomText(text: text, letterSpace: 6,color: Colors.black,fontSize: 20.sp,fontWeight: FontWeight.w400),
          Image.asset('assets/images/divider2.png', width: 125.w,color: AppColors.mainBlack,),
        ],
      ),
    );
  }
}
