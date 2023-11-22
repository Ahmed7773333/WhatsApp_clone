import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whatsapp/features/tab%20controller%20screen/presentation/pages/profile_details/tab_controller.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/app_strings.dart';

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: 411.w,
              height: 384.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 411.w,
                    height: 384.h,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(AppImages.temp),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 13.h,
                    left: 50.w,
                    child: Text(
                      AppStrings.nameSample,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 43.h,
                    left: 23.w,
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(Icons.arrow_back, color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Container(
              width: 411,
              height: 124,
              decoration: const BoxDecoration(color: AppColors.onPrimary),
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const ProfileTabController()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Media, links, and docs',
                          style: TextStyle(
                            color: const Color(0xFF1CA08B),
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Icon(Icons.arrow_forward_ios,
                            color: AppColors.iconColor, size: 15.r),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 24.w,
                    bottom: 30.h,
                    child: Container(
                      width: 72.w,
                      height: 67.h,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(AppImages.temp),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Container(
              width: 411.w,
              height: 120.h,
              decoration: const BoxDecoration(color: AppColors.onPrimary),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppStrings.mute,
                    style: TextStyle(
                      color: const Color(0xFFC8D2D7),
                      fontSize: 19.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const Divider(
                    color: Color(0xFFC8D2D7),
                  ),
                  Text(
                    'Custom notifications',
                    style: TextStyle(
                      color: const Color(0xFFC8D2D7),
                      fontSize: 19.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const Divider(
                    color: Color(0xFFC8D2D7),
                  ),
                  Text(
                    'Media visibility',
                    style: TextStyle(
                      color: const Color(0xFFC8D2D7),
                      fontSize: 19.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Container(
              width: 411.w,
              height: 200.h,
              decoration: const BoxDecoration(color: AppColors.onPrimary),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppStrings.mute,
                    style: TextStyle(
                      color: const Color(0xFFC8D2D7),
                      fontSize: 19.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const Divider(
                    color: Color(0xFFC8D2D7),
                  ),
                  Text(
                    'Custom notifications',
                    style: TextStyle(
                      color: const Color(0xFFC8D2D7),
                      fontSize: 19.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const Divider(
                    color: Color(0xFFC8D2D7),
                  ),
                  Text(
                    'Media visibility',
                    style: TextStyle(
                      color: const Color(0xFFC8D2D7),
                      fontSize: 19.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const Divider(
                    thickness: 2,
                    color: Color(0xFF18252D),
                  ),
                  Text(
                    'Media visibility',
                    style: TextStyle(
                      color: const Color(0xFFC8D2D7),
                      fontSize: 19.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const Divider(
                    color: Color(0xFFC8D2D7),
                  ),
                  Text(
                    'Media visibility',
                    style: TextStyle(
                      color: const Color(0xFFC8D2D7),
                      fontSize: 19.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
