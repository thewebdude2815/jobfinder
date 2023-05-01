import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:jobfinder/helpers/app_assets.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';
import 'package:jobfinder/helpers/routes.dart';
import 'package:jobfinder/screens/components/common_appbar.dart';
import 'package:jobfinder/screens/components/common_textfield.dart';

class ChooseLocation extends StatelessWidget {
  const ChooseLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          showBackButton: true,
          title: 'Your Location',
          centerTitle: true,
          bgColor: Colors.transparent),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: CommonTextFieldNew(
                onSaved: (e) {},
                validator: (e) {},
                filled: true,
                fillColor: AppColors.kWhiteColor,
                hintText: 'Type location you want...',
                hintStyle: AppTextStyle.bodyNormal17
                    .copyWith(color: AppColors.kGrayColor),
                prefixSvg: AppAssets.searchIcon,
                prefixHeight: 14.h,
                prefixWidth: 14.w,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Expanded(
              child: SizedBox(
                width: 375.w,
                child: const GoogleMap(
                  initialCameraPosition: CameraPosition(
                    target: LatLng(37.7749, -122.4194), // San Francisco
                    zoom: 10,
                  ),
                  compassEnabled: true,
                  zoomControlsEnabled: false,
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.kMainColor,
        onPressed: () {
          Get.toNamed(Routes.chooseLanguageRoute);
        },
        child: SvgPicture.asset(
          AppAssets.gpsIcon,
          color: AppColors.kWhiteColor,
          height: 24.h,
          width: 24.w,
        ),
      ),
    );
  }
}
