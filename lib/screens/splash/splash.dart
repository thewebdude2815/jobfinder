import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:jobfinder/helpers/app_assets.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';
import 'package:jobfinder/helpers/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    goToOnBoarding();
  }

  goToOnBoarding() {
    Timer(const Duration(seconds: 2), () {
      Get.toNamed(Routes.onboardingRoute);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(color: AppColors.kMainColor),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'JOBBEE',
                style: AppTextStyle.bodyBold40.copyWith(
                    color: AppColors.kWhiteColor, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 16.h,
              ),
              Text(
                '외국인구인구직',
                style: AppTextStyle.bodyBold40.copyWith(
                    color: AppColors.kWhiteColor, fontWeight: FontWeight.w400),
              )
            ],
          ),
        ),
      ),
    );
  }
}
