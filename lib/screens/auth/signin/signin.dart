import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:jobfinder/helpers/app_assets.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';
import 'package:jobfinder/helpers/routes.dart';
import 'package:jobfinder/screens/components/common_button.dart';
import 'package:jobfinder/screens/components/common_textfield.dart';

class Signin extends StatelessWidget {
  const Signin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhiteColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 32.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 80.h,
              ),
              Text(
                'Welcome\nback',
                style: AppTextStyle.bodyBold40
                    .copyWith(color: AppColors.kBlackColor),
              ),
              SizedBox(
                height: 16.h,
              ),
              Text(
                'Sign in to continue',
                style: AppTextStyle.bodyNormal17
                    .copyWith(color: AppColors.kGrayColor2),
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
                height: 8.h,
              ),
              CommonTextFieldNew(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
                onSaved: (e) {},
                validator: (e) {},
                filled: true,
                hintText: 'Password',
                obscure: true,
              ),
              SizedBox(
                height: 24.h,
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    AppAssets.checkIcon,
                    height: 20.h,
                    width: 20.w,
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  Text(
                    'Remember Me',
                    style: AppTextStyle.bodyNormal15
                        .copyWith(color: AppColors.kGrayColor2),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.forgotPasswordRoute);
                    },
                    child: Text(
                      'Forgot password?',
                      style: AppTextStyle.bodyNormal15
                          .copyWith(color: AppColors.kGrayColor),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 24.h,
              ),
              CommonButton(
                  onTap: () {},
                  text: 'Sign In',
                  isItalicText: false,
                  isFilled: true,
                  hasIcon: false),
              const Spacer(),
              Row(
                children: [
                  const Spacer(),
                  CircleAvatar(
                    radius: 30.r,
                    backgroundColor: AppColors.kYellowColor,
                    child: SvgPicture.asset(
                      AppAssets.kakaoIcon,
                      height: 23.33.h,
                      width: 25.66.w,
                    ),
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  CircleAvatar(
                    radius: 30.r,
                    backgroundColor: AppColors.kGreenColor,
                    child: SvgPicture.asset(
                      AppAssets.navelIcon,
                      height: 23.33.h,
                      width: 25.66.w,
                    ),
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  CircleAvatar(
                    radius: 30.r,
                    backgroundColor: AppColors.kWhiteColor,
                    child: SvgPicture.asset(
                      AppAssets.googleIcon,
                      height: 24.h,
                      width: 24.w,
                    ),
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  CircleAvatar(
                    radius: 30.r,
                    backgroundColor: Color(0xFF1778F3),
                    child: SvgPicture.asset(
                      AppAssets.facebookIcon,
                      height: 24.h,
                      width: 24.w,
                      color: AppColors.kWhiteColor,
                    ),
                  ),
                  const Spacer(),
                ],
              ),
              SizedBox(
                height: 53.h,
              ),
              Center(
                child: RichText(
                  text: TextSpan(
                      text: "Don’t have an account?",
                      style: AppTextStyle.bodyNormal17
                          .copyWith(color: AppColors.kGrayColor2),
                      children: [
                        TextSpan(
                          text: ' Sign Up',
                          style: AppTextStyle.bodyNormal17.copyWith(
                              fontWeight: FontWeight.w400,
                              color: AppColors.kBlackColor),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Get.toNamed(Routes.sigupRoute);
                            },
                        )
                      ]),
                ),
              ),
              SizedBox(
                height: 30.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
