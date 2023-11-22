import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whatsapp/core/utils/app_colors.dart';
import 'package:whatsapp/core/utils/app_strings.dart';
import 'package:whatsapp/core/utils/app_styles.dart';

class ProfileTabController extends StatefulWidget {
  const ProfileTabController({super.key});

  @override
  State<ProfileTabController> createState() => _ProfileTabControllerState();
}

class _ProfileTabControllerState extends State<ProfileTabController>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late PageController _pageController;
  int curruntIndex = 2;
  final List<Widget> pages = [
    const Center(
      child: Text(
        'No media found',
        style: TextStyle(
          color: Color(0xFFBBC4C9),
          fontSize: 19,
          fontWeight: FontWeight.w400,
        ),
      ),
    ),
    const Center(
      child: Text(
        'No documents found',
        style: TextStyle(
          color: Color(0xFFBBC4C9),
          fontSize: 19,
          fontWeight: FontWeight.w400,
        ),
      ),
    ),
    const Center(
      child: Text(
        'No links found',
        style: TextStyle(
          color: Color(0xFFBBC4C9),
          fontSize: 19,
          fontWeight: FontWeight.w400,
        ),
      ),
    ),
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

  List<String> ls = ['MEDIA', 'DOCS', 'LINKS'];

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
                    top: 23.h,
                    left: 17.w,
                    child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child:
                            const Icon(Icons.arrow_back, color: Colors.white)),
                  ),
                  Positioned(
                    top: 20.h,
                    left: 68.w,
                    child: Text(AppStrings.nameSample, style: AppStyles.title),
                  ),
                  Positioned(
                    bottom: 0,
                    child: DefaultTabController(
                      length: 3,
                      child: SizedBox(
                        height: 30.h,
                        width: 411.w,
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
