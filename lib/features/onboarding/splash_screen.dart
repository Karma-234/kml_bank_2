import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kml_bank_2/core/app_colors/app_colors.dart';
import 'package:kml_bank_2/core/extensions/string_extension.dart';
import 'package:kml_bank_2/features/onboarding/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 2),
      () => Get.to(() => const HomeScreen()),
    );
    return Material(
      child: DecoratedBox(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [KColors.blue1, KColors.green1],
              end: Alignment.bottomCenter),
        ),
        child: Image.asset(
          'logo'.png,
          height: 70.0.h,
          width: 79.99.w,
        ),
      ),
    );
  }
}
