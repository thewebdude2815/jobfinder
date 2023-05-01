import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobfinder/helpers/app_assets.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';
import 'package:jobfinder/screens/components/notifications_widget.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kGrayColor7,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: AppColors.kWhiteColor,
              child: Column(
                children: [
                  SizedBox(
                    height: 16.h,
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset(
                          AppAssets.filterIcon,
                          height: 20.h,
                          width: 16.w,
                          color: AppColors.kBlackColor,
                        ),
                        SvgPicture.asset(
                          AppAssets.searchIcon,
                          height: 19.h,
                          width: 19.w,
                          color: AppColors.kBlackColor,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Text(
                      'Notifications',
                      style: AppTextStyle.bodyBold34
                          .copyWith(color: AppColors.kBlackColor),
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            ListView(
              shrinkWrap: true,
              children: const [
                NotificationsWidget(
                  company: 'Creatio Studio in Los Angeles, CA',
                  job: 'UX Designer',
                  notificationType: 'Interview Reminder',
                  isOpened: true,
                  hours: '1h',
                ),
                NotificationsWidget(
                  company: 'Vacant Land in Irvine, CA',
                  job: 'Application Viewed',
                  notificationType: 'Product Designer',
                  isOpened: false,
                  hours: '3h',
                ),
                NotificationsWidget(
                  company: 'Complex Studio in San Diego, CA',
                  job: '3D Animator',
                  notificationType: 'Job Alert',
                  isOpened: true,
                  hours: '1h',
                ),
                NotificationsWidget(
                  company: 'Private Studio in Irvine, CA',
                  job: 'Product Designer',
                  notificationType: 'Application Viewed',
                  isOpened: true,
                  hours: '4d',
                ),
                NotificationsWidget(
                  company: 'Creatio Studio in Los Angeles, CA',
                  job: 'UX Designer',
                  notificationType: 'Interview Reminder',
                  isOpened: true,
                  hours: '1h',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
