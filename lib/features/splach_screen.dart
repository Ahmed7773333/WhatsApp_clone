import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../config/app_routes.dart';
import '../core/utils/app_images.dart';

class SplachScreen extends StatelessWidget {
  static const String routeName = '/splach';
  const SplachScreen({super.key});

  Future<void> _navigateToHome(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 3));
    // ignore: use_build_context_synchronously
    Navigator.of(context).pushReplacementNamed(Routes.tab);
  }

  @override
  Widget build(BuildContext context) {
    _navigateToHome(context);

    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 187.h,
          width: 168.w,
          child: Image.asset(
            AppImages.splach,
            height: 187.h,
            width: 187.w,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
