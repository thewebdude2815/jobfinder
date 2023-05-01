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

class Signup extends StatelessWidget {
  const Signup({super.key});

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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Welcome\nback',
                    style: AppTextStyle.bodyBold40
                        .copyWith(color: AppColors.kBlackColor),
                  ),
                  SizedBox(
                    height: 90.h,
                    width: 90.w,
                    child: Stack(
                      children: [
                        CircleAvatar(
                          radius: 80.r,
                          backgroundColor: Colors.orange,
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: CircleAvatar(
                            radius: 20.r,
                            backgroundColor: AppColors.kMainColor,
                            child: Icon(
                              Icons.add,
                              color: AppColors.kWhiteColor,
                              size: 16.h,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
              Text(
                'Sign up to join',
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
                hintText: 'Name',
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
                height: 8.h,
              ),
              CommonTextFieldNew(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
                onSaved: (e) {},
                validator: (e) {},
                filled: true,
                hintText: 'Mobile',
              ),
              const Spacer(),
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
                  RichText(
                    text: TextSpan(
                        text: "I agree to the",
                        style: AppTextStyle.bodyNormal17
                            .copyWith(color: AppColors.kGrayColor2),
                        children: [
                          TextSpan(
                            text: ' Terms of Service',
                            style: AppTextStyle.bodyNormal17.copyWith(
                                fontWeight: FontWeight.w400,
                                color: AppColors.kBlackColor),
                          )
                        ]),
                  ),
                ],
              ),
              SizedBox(
                height: 24.h,
              ),
              CommonButton(
                  onTap: () {
                    Get.toNamed(Routes.verifyRoute);
                  },
                  text: 'Sign Up',
                  isItalicText: false,
                  isFilled: true,
                  hasIcon: false),
              SizedBox(
                height: 24.h,
              ),
              Center(
                child: RichText(
                  text: TextSpan(
                      text: "Have an account?",
                      style: AppTextStyle.bodyNormal17
                          .copyWith(color: AppColors.kGrayColor2),
                      children: [
                        TextSpan(
                          text: ' Sign In',
                          style: AppTextStyle.bodyNormal17.copyWith(
                              fontWeight: FontWeight.w400,
                              color: AppColors.kBlackColor),
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
