import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/app_strings.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/utils/componetns.dart';
import '../../widgets/call.dart';

// ignore: use_key_in_widget_constructors
class CallsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        ListView.separated(
          itemCount: 15,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: Container(
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
              title: Text(
                AppStrings.nameSample,
                style: AppStyles.title,
              ),
              subtitle: Row(
                children: [
                  Image.asset(AppImages.callFromMe),
                  Text(
                    AppStrings.yesterday,
                    style: AppStyles.title.copyWith(fontSize: 14.54.sp),
                  ),
                ],
              ),
              trailing: Componetns.openContainers(
                  closedWidget: Image.asset(AppImages.call),
                  openedWidget: const Calling()),
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
        Positioned(
          left: 327.w,
          bottom: 49.h,
          child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: AppColors.secondry,
            child: Image.asset(
              AppImages.makeCall,
              fit: BoxFit.cover,
            ),
          ),
        )
      ],
    );
  }
}
