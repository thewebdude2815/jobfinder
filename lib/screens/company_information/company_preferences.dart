import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';
import 'package:jobfinder/helpers/routes.dart';
import 'package:jobfinder/screens/components/common_appbar.dart';
import 'package:jobfinder/screens/components/common_button.dart';
import 'package:jobfinder/screens/components/common_dropdown.dart';

import 'package:jobfinder/screens/components/custom_stepper.dart';

class CompanyPreferences extends StatefulWidget {
  const CompanyPreferences({super.key});

  @override
  State<CompanyPreferences> createState() => _CompanyPreferencesState();
}

class _CompanyPreferencesState extends State<CompanyPreferences> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhiteColor,
      appBar: CustomAppBar(
          showBackButton: true,
          title: 'Company Information',
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 16.w, top: 16.h),
              child: Text(
                'Save',
                style: AppTextStyle.bodyNormal17
                    .copyWith(color: AppColors.kMainColor),
              ),
            )
          ]),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 32.w),
          child: Column(
            children: [
              SizedBox(
                height: 16.h,
              ),
              const CustomStepper(
                index: 4,
                completedIndexes: [1, 2, 3],
              ),
              SizedBox(
                height: 24.h,
              ),
              Text(
                'Description',
                style: AppTextStyle.bodySemiBold17.copyWith(
                    fontStyle: FontStyle.italic, color: AppColors.kBlackColor),
              ),
              SizedBox(
                height: 20.h,
              ),
              const CompanyPreferencesWidget(
                heading: 'About',
                subText:
                    'We creates software that empowers everyone from small start-ups to large enterprises and helps teams everywhere change the world. Our products are revolutionizing the software industry and helping teams collaborate.',
              ),
              SizedBox(
                height: 16.h,
              ),
              const CompanyPreferencesWidget(
                heading: 'What We Do',
                subText:
                    'To support you at work, our perks and benefits include ample time off, an annual education budget, paid volunteer days, and so much more.',
              ),
              SizedBox(
                height: 16.h,
              ),
              const CompanyPreferencesWidget(
                heading: 'Company Location',
                subText:
                    'To support you at work, our perks and benefits include ample time off, an annual education budget, paid volunteer days, and so much more.',
              ),
              const Spacer(),
              CommonButton(
                  onTap: () {
                    Get.toNamed(Routes.educationRoute);
                  },
                  text: 'Done',
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

class CompanyPreferencesWidget extends StatelessWidget {
  final String heading;
  final String subText;
  const CompanyPreferencesWidget({
    required this.heading,
    required this.subText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          heading,
          style: AppTextStyle.bodyNormal13.copyWith(
              fontStyle: FontStyle.italic, color: AppColors.kGrayColor2),
        ),
        SizedBox(
          height: 16.h,
        ),
        Text(
          subText,
          style: AppTextStyle.bodyNormal15.copyWith(
              fontStyle: FontStyle.italic, color: AppColors.kBlackColor),
        ),
      ],
    );
  }
}
