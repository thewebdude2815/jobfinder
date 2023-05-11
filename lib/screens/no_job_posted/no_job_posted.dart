import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';
import 'package:jobfinder/screens/components/common_button.dart';

class NoJobPosted extends StatelessWidget {
  const NoJobPosted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  const Spacer(),
                  Center(
                    child: Text(
                      'You have not posted any job',
                      style: AppTextStyle.bodyBold24.copyWith(
                        color: AppColors.kWhiteColor,
                        fontSize: 26.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 32.w),
                    child: CommonButton(
                        onTap: () {},
                        text: 'POST JOB',
                        width: double.infinity,
                        isItalicText: true,
                        isFilled: true,
                        hasIcon: false),
                  ),
                  SizedBox(
                    height: 40.h,
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
