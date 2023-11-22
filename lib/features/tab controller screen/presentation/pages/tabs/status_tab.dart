import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/app_strings.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/utils/componetns.dart';
import '../../widgets/write_status.dart';

// ignore: use_key_in_widget_constructors
class StatusTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 12.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 56.w,
                        height: 56.h,
                        decoration: const ShapeDecoration(
                          color: Color(0xFFC4C4C4),
                          shape: OvalBorder(),
                        ),
                      ),
                      Container(
                        width: 50.w,
                        height: 50.h,
                        decoration: const ShapeDecoration(
                          image: DecorationImage(
                            image: AssetImage(AppImages.temp),
                            fit: BoxFit.cover,
                          ),
                          shape: OvalBorder(),
                        ),
                      ),
                    ],
                  ),
                  title: Text(
                    AppStrings.nameSample,
                    style: AppStyles.title,
                  ),
                  subtitle: Text(
                    AppStrings.yesterday,
                    style: AppStyles.title.copyWith(fontSize: 14.54.sp),
                  ),
                  trailing: Image.asset(AppImages.menuHori),
                ),
                SizedBox(
                  height: 13.h,
                ),
                Text(
                  AppStrings.recent,
                  style: AppStyles.title.copyWith(fontSize: 15.54.sp),
                ),
                SizedBox(
                  height: 260.h,
                  child: ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 3,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        leading: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              width: 56.w,
                              height: 56.h,
                              decoration: const ShapeDecoration(
                                color: Color(0xFFC4C4C4),
                                shape: OvalBorder(),
                              ),
                            ),
                            Container(
                              width: 50.w,
                              height: 50.h,
                              decoration: const ShapeDecoration(
                                image: DecorationImage(
                                  image: AssetImage(AppImages.temp),
                                  fit: BoxFit.cover,
                                ),
                                shape: OvalBorder(),
                              ),
                            ),
                          ],
                        ),
                        title: Text(
                          AppStrings.nameSample,
                          style: AppStyles.title,
                        ),
                        subtitle: Text(
                          AppStrings.ago,
                          style: AppStyles.title.copyWith(fontSize: 14.54.sp),
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const Divider(
                        thickness: 2,
                        color: Color(0xFF18252D),
                        indent: 71,
                        endIndent: 71,
                      );
                    },
                  ),
                ),
                Text(
                  AppStrings.viewUpdate,
                  style: AppStyles.title.copyWith(fontSize: 15.54.sp),
                ),
                SizedBox(
                  height: 510.h,
                  child: ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 7,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        leading: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              width: 56.w,
                              height: 56.h,
                              decoration: const ShapeDecoration(
                                color: Color(0xFFC4C4C4),
                                shape: OvalBorder(),
                              ),
                            ),
                            Container(
                              width: 50.w,
                              height: 50.h,
                              decoration: const ShapeDecoration(
                                image: DecorationImage(
                                  image: AssetImage(AppImages.temp),
                                  fit: BoxFit.cover,
                                ),
                                shape: OvalBorder(),
                              ),
                            ),
                          ],
                        ),
                        title: Text(
                          AppStrings.nameSample,
                          style: AppStyles.title,
                        ),
                        subtitle: Text(
                          AppStrings.ago,
                          style: AppStyles.title.copyWith(fontSize: 14.54.sp),
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const Divider(
                        thickness: 2,
                        color: Color(0xFF18252D),
                        indent: 71,
                        endIndent: 71,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: 335.w,
          bottom: 109.h,
          child: Componetns.openContainers(
              closedWidget: Image.asset(AppImages.writeStatus),
              openedWidget: const WriteStatus()),
        ),
        Positioned(
          left: 327.w,
          bottom: 40.h,
          child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: AppColors.secondry,
            child: Image.asset(
              AppImages.camera,
              color: Colors.white,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
