import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeDisplayImage extends StatelessWidget {
  const HomeDisplayImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          clipBehavior: Clip.antiAlias,
    
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Image.asset('assets/cover/cover4.jpeg')),
        // Positioned(
        //   right: -10.w,
        //   bottom: 15.h,
        //   left: 120.w,
        //   top: 250.h,
    
        //   child: SvgPicture.asset('assets/texts/11.svg'),
        // ),
      ],
    );
  }
}
