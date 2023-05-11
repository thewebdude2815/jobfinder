import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';
import 'package:jobfinder/helpers/routes.dart';
import 'package:jobfinder/screens/components/common_appbar.dart';
import 'package:jobfinder/screens/components/common_button.dart';
import 'package:jobfinder/screens/components/custom_stepper.dart';
import 'package:table_calendar/table_calendar.dart';

class SetAddress extends StatelessWidget {
  const SetAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhiteColor,
      appBar: CustomAppBar(
          showBackButton: true,
          title: 'Job Preferences',
          centerTitle: true,
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 16.w, top: 16.h),
              child: Text(
                'Save',
                style: AppTextStyle.bodyNormal17.copyWith(
                  color: AppColors.kMainColor,
                ),
              ),
            ),
          ]),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 28.h,
            ),
            const CustomStepper(
              index: 4,
              completedIndexes: [1, 2, 3],
            ),
            SizedBox(
              height: 48.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: CommonButton(
                  onTap: () {
                    Get.toNamed(Routes.setLocationRoute);
                  },
                  text: 'Set Job Location From Map',
                  width: double.infinity,
                  isItalicText: true,
                  isFilled: true,
                  hasIcon: false),
            ),
            SizedBox(
              height: 18.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: CommonButton(
                  onTap: () {},
                  width: double.infinity,
                  text: 'Set Address',
                  isItalicText: true,
                  isFilled: true,
                  hasIcon: false),
            ),
            SizedBox(
              height: 36.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: TableCalendar(
                firstDay: DateTime.utc(2010, 10, 16),
                lastDay: DateTime.utc(2030, 3, 14),
                focusedDay: DateTime.now(),
                headerStyle: HeaderStyle(
                  formatButtonVisible: false,
                  titleCentered: true,
                  titleTextStyle: AppTextStyle.bodyBold24.copyWith(
                      color: AppColors.kBlackColor,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.italic),
                ),
                calendarStyle: CalendarStyle(
                  defaultTextStyle: AppTextStyle.bodyNormal15.copyWith(
                    color: AppColors.kBlackColor,
                    fontStyle: FontStyle.italic,
                  ),
                  selectedTextStyle: AppTextStyle.bodyNormal15.copyWith(
                    color: AppColors.kWhiteColor,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
        child: Row(
          children: [
            Expanded(
              child: CommonButton(
                  onTap: () {},
                  text: 'Back',
                  isItalicText: false,
                  isFilled: false,
                  fillColor: AppColors.kWhiteColor,
                  hasIcon: false),
            ),
            SizedBox(
              width: 16.w,
            ),
            Expanded(
              child: CommonButton(
                  onTap: () {
                    Get.toNamed(Routes.doneRoute);
                  },
                  text: 'Continue',
                  isItalicText: false,
                  isFilled: true,
                  hasIcon: false),
            ),
          ],
        ),
      ),
    );
  }
}
