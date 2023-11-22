import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/app_images.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_styles.dart';

class WriteStatus extends StatelessWidget {
  const WriteStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFF7B6C),
      appBar: AppBar(),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            right: 72.w,
            bottom: 399.h,
            child: Text(
              AppStrings.typeStatus,
              style: AppStyles.title.copyWith(
                color: const Color(0xFFFB968C),
                fontSize: 48.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Positioned(
            left: 24.w,
            bottom: 50.h,
            child: Row(
              children: [
                Image.asset(
                  AppImages.emoji,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 22.w,
                ),
                Text(
                  'T',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 27.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  width: 22.w,
                ),
                Image.asset(
                  AppImages.paiting,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: 411.w,
              height: 37.h,
              decoration: const BoxDecoration(
                color: Color(0xFF984A40),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 20.w,
                  ),
                  Image.asset(AppImages.arrowRight),
                  SizedBox(
                    width: 20.w,
                  ),
                  Text(
                    AppStrings.statusCustom,
                    style: AppStyles.title.copyWith(
                      color: const Color(0xFFD99C97),
                      fontSize: 17.sp,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
