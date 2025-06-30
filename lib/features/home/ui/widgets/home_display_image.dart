import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeDisplayImage extends StatelessWidget {
  const HomeDisplayImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500.h,
      clipBehavior: Clip.antiAlias,

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Image.asset('assets/images/cover1.jpeg'),
    );
  }
}
