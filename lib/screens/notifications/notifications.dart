import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_swipe_action_cell/flutter_swipe_action_cell.dart';
import 'package:jobfinder/helpers/app_assets.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';
import 'package:jobfinder/screens/components/notifications_widget.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  late SwipeActionController controller;
  List<NotificationsWidget> list = [];
  @override
  void initState() {
    super.initState();
    controller = SwipeActionController(selectedIndexPathsChangeCallback:
        (changedIndexPaths, selected, currentCount) {
      setState(() {});
    });
    list = [
      NotificationsWidget(
        company: 'Creatio Studio in Los Angeles, CA',
        job: 'UX Designer',
        notificationType: 'Interview Reminder',
        isOpened: true,
        hours: '1h',
        controller: controller,
        valKey: 0,
      ),
      NotificationsWidget(
        company: 'Vacant Land in Irvine, CA',
        job: 'Application Viewed',
        notificationType: 'Product Designer',
        isOpened: false,
        controller: controller,
        hours: '3h',
        valKey: 1,
      ),
      NotificationsWidget(
        company: 'Complex Studio in San Diego, CA',
        job: '3D Animator',
        notificationType: 'Job Alert',
        isOpened: true,
        controller: controller,
        hours: '1h',
        valKey: 2,
      ),
      NotificationsWidget(
        company: 'Private Studio in Irvine, CA',
        job: 'Product Designer',
        notificationType: 'Application Viewed',
        isOpened: true,
        controller: controller,
        hours: '4d',
        valKey: 3,
      ),
      NotificationsWidget(
        company: 'Creatio Studio in Los Angeles, CA',
        job: 'UX Designer',
        notificationType: 'Interview Reminder',
        isOpened: true,
        controller: controller,
        hours: '1h',
        valKey: 4,
      ),
    ];
  }

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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Notifications',
                          style: AppTextStyle.bodyBold34
                              .copyWith(color: AppColors.kBlackColor),
                        ),
                        Image.asset(
                          AppAssets.gTranslate,
                          height: 28.h,
                          width: 26.w,
                        ),
                      ],
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
            ListView(shrinkWrap: true, children: list)
          ],
        ),
      ),
    );
  }
}
