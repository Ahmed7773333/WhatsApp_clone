import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/app_images.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_styles.dart';

class VideoCalling extends StatelessWidget {
  const VideoCalling({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              bottom: 0,
              child: Container(
                width: 411.w,
                height: 797.h,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppImages.temp),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 16.h,
              left: 130.w,
              child: Column(
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
                  Container(
                    width: 90.w,
                    height: 90.h,
                    decoration: const ShapeDecoration(
                      image: DecorationImage(
                        image: AssetImage(AppImages.temp),
                        fit: BoxFit.cover,
                      ),
                      shape: OvalBorder(),
                    ),
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
