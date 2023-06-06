import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_swipe_action_cell/core/cell.dart';
import 'package:flutter_swipe_action_cell/flutter_swipe_action_cell.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';

class NotificationsWidget extends StatelessWidget {
  final String notificationType, job, company, hours;
  final bool isOpened;
  final SwipeActionController controller;
  final valKey;
  const NotificationsWidget({
    required this.company,
    required this.job,
    required this.notificationType,
    required this.hours,
    required this.isOpened,
    required this.controller,
    required this.valKey,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SwipeActionCell(
      key: ValueKey(valKey),
      controller: controller,
      trailingActions: [
        SwipeAction(
            title: "delete",
            onTap: (handler) async {
              await handler(true);
              // list.removeAt(index);
              // setState(() {});
            }),
      ],
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.kGrayColor4, width: 1),
          borderRadius: BorderRadius.circular(8.r),
          color: AppColors.kWhiteColor,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 9,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    notificationType,
                    style: AppTextStyle.bodyNormal15.copyWith(
                        color: AppColors.kBlackColor,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    job,
                    style: AppTextStyle.bodyNormal13
                        .copyWith(color: AppColors.kGrayColor2),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    company,
                    style: AppTextStyle.bodyNormal13
                        .copyWith(color: AppColors.kGrayColor2),
                  )
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    hours,
                    style: AppTextStyle.bodyNormal13.copyWith(
                      color: AppColors.kGrayColor2,
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  isOpened
                      ? const SizedBox()
                      : CircleAvatar(
                          radius: 4.r,
                          backgroundColor: AppColors.kMainColor,
                        )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
