import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_images.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_styles.dart';

class Calling extends StatelessWidget {
  const Calling({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: 0,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 411.w,
                    height: 133.h,
                    decoration: const BoxDecoration(color: Color(0xFF054C44)),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Image.asset(AppImages.lock),
                          SizedBox(
                            width: 5.w,
                          ),
                          Text(AppStrings.end2end, style: AppStyles.smallStyle)
                        ],
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Text(AppStrings.title, style: AppStyles.title),
                      SizedBox(
                        height: 15.h,
                      ),
                      Text(AppStrings.calling, style: AppStyles.title),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              top: 132.h,
              child: Container(
                width: 411.w,
                height: 577.h,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppImages.temp),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 411.w,
                    height: 87.h,
                    decoration: const BoxDecoration(color: Color(0xFF054C44)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        AppImages.sound,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 80.w,
                      ),
                      Image.asset(
                        AppImages.video,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 80.w,
                      ),
                      Image.asset(
                        AppImages.microphone,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              top: 609.h,
              right: 170.w,
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  width: 58.w,
                  height: 58.h,
                  decoration: const ShapeDecoration(
                    color: Color(0xFFE91C43),
                    shape: OvalBorder(),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.call_end,
                      color: Colors.white,
                      size: 29.r,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
