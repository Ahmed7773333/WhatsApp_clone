import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whatsapp/features/tab%20controller%20screen/presentation/pages/camera_page.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_images.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_styles.dart';
import 'tabs/call_tab.dart';
import 'tabs/chats_tab.dart';
import 'tabs/status_tab.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late PageController _pageController;
  int curruntIndex = 0;
  final List<Widget> pages = [
    ChatsTab(),
    StatusTab(),
    CallsTab(),
  ];
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _pageController = PageController(initialPage: curruntIndex);

    _tabController.addListener(() {
      if (_tabController.indexIsChanging) {
        _pageController.animateToPage(
          _tabController.index,
          duration: const Duration(milliseconds: 50),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    _pageController.dispose();
    super.dispose();
  }

  List<String> ls = [AppStrings.chats, AppStrings.status, AppStrings.calls];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100.h,
              width: double.infinity,
              color: AppColors.onPrimary,
              child: Stack(
                children: [
                  Positioned(
                    top: 15.h,
                    left: 24.w,
                    child: Text(
                      AppStrings.title,
                      style: AppStyles.title,
                    ),
                  ),
                  Positioned(
                    top: 68.h,
                    left: 13.w,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CameraScreen()));
                      },
                      child: Image.asset(
                        AppImages.camera,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 17.h,
                    right: 54.w,
                    child: InkWell(
                      onTap: () {},
                      child: Image.asset(
                        AppImages.search,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 15.h,
                    right: 12.w,
                    child: InkWell(
                      onTap: () {},
                      child: Image.asset(
                        AppImages.menu,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 69.h,
                    left: 60.w,
                    child: DefaultTabController(
                      length: 3,
                      child: SizedBox(
                        height: 30.h,
                        width: 300.w,
                        child: TabBar(
                          dividerColor: Colors.transparent,
                          controller: _tabController,
                          indicatorColor: AppColors.secondry,
                          unselectedLabelColor: AppColors.iconColor,
                          labelColor: AppColors.secondry,
                          indicatorWeight: 3,
                          labelStyle: AppStyles.title.copyWith(fontSize: 16.sp),
                          tabs: ls
                              .map((e) => Tab(
                                    height: 30,
                                    child: Center(child: Text(e)),
                                  ))
                              .toList(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 670.h,
              width: double.infinity,
              child: PageView(
                controller: _pageController,
                children: pages,
                onPageChanged: (index) {
                  _tabController.animateTo(index);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
