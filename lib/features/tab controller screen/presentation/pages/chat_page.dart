import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/app_images.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_styles.dart';

import '../../../../core/utils/componetns.dart';
import '../widgets/call.dart';
import '../widgets/video_call.dart';
import 'profile_details/profile_details.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: Row(
          children: [
            Componetns.openContainers(
              closedWidget: Container(
                width: 32.w,
                height: 32.h,
                decoration: const ShapeDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppImages.temp),
                    fit: BoxFit.cover,
                  ),
                  shape: OvalBorder(),
                ),
              ),
              openedWidget: const ProfileDetails(),
            ),
            SizedBox(
              width: 5.w,
            ),
            Text(AppStrings.nameSample, style: AppStyles.title),
          ],
        ),
        actions: [
          Componetns.openContainers(
              closedWidget: Image.asset(
                AppImages.video,
                color: Colors.white,
              ),
              openedWidget: const VideoCalling()),
          SizedBox(
            width: 20.w,
          ),
          Componetns.openContainers(
              closedWidget: Image.asset(
                AppImages.call,
                color: Colors.white,
              ),
              openedWidget: const Calling()),
          SizedBox(
            width: 20.w,
          ),
          Image.asset(
            AppImages.menu,
            color: Colors.white,
          ),
        ],
      ),
      body: Stack(
        alignment: Alignment.center,
        fit: StackFit.expand,
        children: [
          Image.asset(
            AppImages.background,
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 12.h,
            left: 176.w,
            child: Container(
              width: 59.w,
              height: 27.h,
              decoration: ShapeDecoration(
                color: const Color(0xFF202B31),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.r)),
              ),
              child: Center(
                child: Text(
                  AppStrings.today,
                  style: AppStyles.title.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 52.h,
            left: 6.w,
            child: Container(
              width: 398.w,
              height: 60.h,
              decoration: ShapeDecoration(
                color: const Color(0xFF202B31),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.r)),
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                      left: 14.w, top: 1.h, child: Image.asset(AppImages.lock)),
                  Text(
                    AppStrings.secureMessage,
                    style: AppStyles.title.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 10.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 333.w,
                  height: 41.h,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: AppStrings.typeMessage,
                      prefixIcon: Image.asset(
                        AppImages.emoji,
                      ),
                      suffixIcon: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Image.asset(
                            AppImages.dabos,
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Image.asset(AppImages.camera),
                          SizedBox(
                            width: 5.w,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 11.w,
                ),
                Image.asset(AppImages.microphone),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
