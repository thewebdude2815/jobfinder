import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';
import 'package:jobfinder/helpers/routes.dart';
import 'package:jobfinder/screens/components/common_appbar.dart';
import 'package:jobfinder/screens/components/common_button.dart';
import 'package:jobfinder/screens/components/common_textfield.dart';

class VerificationCode extends StatelessWidget {
  const VerificationCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhiteColor,
      appBar: CustomAppBar(
          showBackButton: false, title: 'Verifying Number', centerTitle: true),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 32.w),
          child: Column(
            children: [
              SizedBox(
                height: 40.h,
              ),
              Text(
                'We’ve sent your verification code to +32 8304 5321',
                style: AppTextStyle.bodyNormal17
                    .copyWith(color: AppColors.kBlackColor),
              ),
              SizedBox(
                height: 40.h,
              ),
              CommonTextFieldNew(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
                onSaved: (e) {},
                validator: (e) {},
                filled: true,
                hintText: 'Enter Code',
              ),
              SizedBox(
                height: 24.h,
              ),
              CommonButton(
                  onTap: () {
                    Get.toNamed(Routes.setLocationRoute);
                  },
                  text: 'Verify',
                  isItalicText: false,
                  isFilled: true,
                  hasIcon: false),
              SizedBox(
                height: 24.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Resend Code',
                    style: AppTextStyle.bodyNormal17
                        .copyWith(color: AppColors.kBlackColor),
                  ),
                  Text(
                    '1:20 min left',
                    style: AppTextStyle.bodyNormal17
                        .copyWith(color: AppColors.kGrayColor),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
