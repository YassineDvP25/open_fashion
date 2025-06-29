import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:open__fashion__app/core/helpers/spacing.dart';
import 'package:open__fashion__app/core/theming/colors/app_colors.dart';
import 'package:open__fashion__app/features/home/data/covers_model.dart';

class HomeCoversListView extends StatelessWidget {
  const HomeCoversListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 460.h,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal:   20).w,
        scrollDirection: Axis.horizontal,
        itemCount: CoverModel.covers.length,
        itemBuilder: (context, index) {
          var cover = CoverModel.covers[index];
          return Column(
            children: [
              Expanded(
                flex: 9,
                child: Container(
                  height: 200.h,
                  width: 310.w,
                  padding: EdgeInsets.symmetric(horizontal:   5).w,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30)
                  ),
                  
                  child: Container(
                    width: 270, 
                    height: 300, 
                    decoration: BoxDecoration(
                      color: Colors.black, 
                      image: DecorationImage(
                        image: AssetImage(
                          cover.image,
                        ), // ضع مسار الصورة الصحيح هنا
                        fit:
                            BoxFit
                                .fill, // يضمن تغطية الحاوية بالكامل مثل التصميم
                      ),
                    ),
                  ),
                ),
              ),
              verticalSpace(10),

              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Text(
                      cover.name.toUpperCase(),
                      style: TextStyle(
                        fontFamily: 'TenorSans',
                        color: AppColors.mainGrey,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.5,
                      ),
                    ),
                    verticalSpace(5),
                    Image.asset('assets/images/divider2.png',scale: 9,)
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
