import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:open__fashion__app/core/helpers/spacing.dart';
import 'package:open__fashion__app/core/theming/colors/app_colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Size get preferredSize => Size.fromHeight(40.h);

  @override
  Widget build(BuildContext context) {
    
    bool isBlack = true;
    // this for svg color filter
    ColorFilter appBarWidgetsColor =
        isBlack == true
            ? AppColors.mainWhiteColorFilter
            : AppColors.mainBlackColorFilter;

            
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0).w,
      child: AppBar(
        centerTitle: true,

        backgroundColor:
            isBlack == true ? AppColors.mainBlack : AppColors.mainWhite,

        leadingWidth: 25.w,
        leading: SvgPicture.asset(
          'assets/svgs/Menu.svg',
          colorFilter: appBarWidgetsColor,
        ),
        title: SvgPicture.asset(
          'assets/svgs/Logo (2).svg',
          colorFilter: appBarWidgetsColor,
        ),
        actions: [
          SvgPicture.asset(
            'assets/svgs/Search.svg',
            colorFilter: appBarWidgetsColor,
          ),
          horizantalSpace(10),
          SvgPicture.asset(
            'assets/svgs/shopping bag.svg',
            colorFilter: appBarWidgetsColor,
          ),
        ],
      ),
    );
  }
}
