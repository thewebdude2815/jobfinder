import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';
import 'package:jobfinder/screens/components/common_appbar.dart';
import 'package:jobfinder/screens/components/common_button.dart';
import 'package:jobfinder/screens/components/common_textfield.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhiteColor,
      appBar: CustomAppBar(
          showBackButton: true, title: 'Forgot Password', centerTitle: true),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 32.w),
          child: Column(
            children: [
              SizedBox(
                height: 40.h,
              ),
              Text(
                'Enter your email and will send you instruction on how to reset it',
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
                hintText: 'Email',
              ),
              SizedBox(
                height: 24.h,
              ),
              CommonButton(
                  onTap: () {},
                  text: 'Send',
                  isItalicText: false,
                  isFilled: true,
                  hasIcon: false),
            ],
          ),
        ),
      ),
    );
  }
}
