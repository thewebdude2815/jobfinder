import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:jobfinder/helpers/app_assets.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/routes.dart';
import 'package:jobfinder/screens/components/common_dropdown.dart';
import 'package:jobfinder/screens/components/daily_life_category_chip.dart';
import 'package:jobfinder/screens/components/daily_life_feed_with_image_widget.dart';
import 'package:jobfinder/screens/components/daily_life_feed_withoutImageWidget.dart';

class DailyLifeHome extends StatefulWidget {
  const DailyLifeHome({super.key});

  @override
  State<DailyLifeHome> createState() => _DailyLifeHomeState();
}

class _DailyLifeHomeState extends State<DailyLifeHome> {
  List<String> catList = [
    'Do it together',
    'Ask anything',
    'Restaurant',
    'Lost Item',
    'Do it together'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhiteColor,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 20.w, left: 6.w),
              child: Row(
                children: [
                  SizedBox(
                    width: 210.w,
                    child: CommonDropdownButton(
                      items: const ["Seoul", "London"],
                      isFilled: false,
                      onSaved: (e) {},
                      onChange: (e) {},
                      textColor: AppColors.kBlackColor,
                      hintText: 'Select Location',
                      showBorder: false,
                    ),
                  ),
                  const Spacer(),
                  SvgPicture.asset(
                    AppAssets.searchIcon,
                    height: 20.h,
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  SvgPicture.asset(
                    AppAssets.bellIcon,
                    height: 20.h,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: SizedBox(
                height: 30.h,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: catList.length,
                    itemBuilder: (_, index) {
                      return DailyLifeCategoryChip(
                        title: catList[index],
                      );
                    }),
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            const DailyLifeFeedWithImageWidget(),
            SizedBox(
              height: 20.h,
            ),
            const DailyLifeFeedWithImageWidget(),
            SizedBox(
              height: 20.h,
            ),
            const DailyLifeFeedWithImageWidget(),
            SizedBox(
              height: 20.h,
            ),
            const DailyLifeFeedWithoutImageWidget(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed(Routes.composeRoute);
        },
        child: SvgPicture.asset(
          AppAssets.addIcon,
          height: 60.h,
        ),
      ),
    );
  }
}
