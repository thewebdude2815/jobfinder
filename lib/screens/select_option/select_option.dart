import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:jobfinder/helpers/app_assets.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';
import 'package:jobfinder/helpers/routes.dart';
import 'package:jobfinder/screens/components/common_appbar.dart';
import 'package:jobfinder/screens/components/common_button.dart';

class SelectOption extends StatefulWidget {
  const SelectOption({super.key});

  @override
  State<SelectOption> createState() => _SelectOptionState();
}

class _SelectOptionState extends State<SelectOption> {
  bool jobSeekerSelected = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhiteColor,
      appBar: CustomAppBar(actions: [
        Padding(
          padding: EdgeInsets.only(right: 16.w, top: 16.h),
          child: Text(
            'Skip',
            style: AppTextStyle.bodyNormal17
                .copyWith(color: AppColors.kGrayColor2),
          ),
        )
      ]),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 32.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40.h,
              ),
              Text(
                'Continue as',
                style: AppTextStyle.bodyBold40
                    .copyWith(color: AppColors.kBlackColor),
              ),
              SizedBox(
                height: 16.h,
              ),
              Text(
                'To continue to the next page, please select which one you are',
                style: AppTextStyle.bodyNormal17
                    .copyWith(color: AppColors.kGrayColor2),
              ),
              SizedBox(
                height: 40.h,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    jobSeekerSelected = !jobSeekerSelected;
                  });
                },
                child: SelectOptionWidget(
                  isSelected: jobSeekerSelected,
                  heading: 'Job Seekers',
                  subHeading: 'Find your dream job and build your career',
                  icon: AppAssets.userIcon,
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    jobSeekerSelected = !jobSeekerSelected;
                  });
                },
                child: SelectOptionWidget(
                  isSelected: !jobSeekerSelected,
                  heading: 'Company',
                  subHeading: 'Recruit great employees quickly and easily',
                  icon: AppAssets.caseIcon,
                ),
              ),
              const Spacer(),
              CommonButton(
                  onTap: () {
                    Get.toNamed(Routes.siginRoute);
                  },
                  text: 'Continue',
                  isItalicText: false,
                  isFilled: true,
                  hasIcon: false),
              SizedBox(
                height: 30.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SelectOptionWidget extends StatelessWidget {
  final String heading;
  final String subHeading;
  final bool isSelected;
  final String icon;
  const SelectOptionWidget({
    required this.heading,
    required this.subHeading,
    required this.isSelected,
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 102.h,
      width: 311.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(
              color:
                  isSelected ? AppColors.kMainColor : AppColors.kGrayColor3)),
      padding: EdgeInsets.symmetric(
        horizontal: 16.w,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 30.r,
            backgroundColor:
                !isSelected ? AppColors.kGrayColor4 : AppColors.kMainColor,
            child: Center(
              child: SvgPicture.asset(
                icon,
                height: 20.h,
                width: 20.h,
                color:
                    isSelected ? AppColors.kWhiteColor : AppColors.kGrayColor6,
              ),
            ),
          ),
          SizedBox(
            width: 16.w,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      heading,
                      style: AppTextStyle.bodyNormal17
                          .copyWith(color: AppColors.kBlackColor),
                    ),
                    isSelected
                        ? SvgPicture.asset(
                            AppAssets.checkIcon,
                            height: 20.h,
                            width: 20.w,
                          )
                        : CircleAvatar(
                            radius: 10.r,
                            backgroundColor: AppColors.kGrayColor3,
                            child: CircleAvatar(
                              radius: 8.r,
                              backgroundColor: AppColors.kWhiteColor,
                            ),
                          ),
                  ],
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text(
                  subHeading,
                  maxLines: 2,
                  style: AppTextStyle.bodyNormal15
                      .copyWith(color: AppColors.kGrayColor2),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
