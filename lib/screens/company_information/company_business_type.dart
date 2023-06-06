import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';
import 'package:jobfinder/helpers/routes.dart';
import 'package:jobfinder/screens/components/common_appbar.dart';
import 'package:jobfinder/screens/components/common_button.dart';
import 'package:jobfinder/screens/components/common_dropdown.dart';
import 'package:jobfinder/screens/components/common_textfield.dart';
import 'package:jobfinder/screens/components/common_textfield_with_label.dart';
import 'package:jobfinder/screens/components/custom_stepper.dart';

class CompanyBusinessType extends StatefulWidget {
  const CompanyBusinessType({super.key});

  @override
  State<CompanyBusinessType> createState() => _CompanyBusinessTypeState();
}

class _CompanyBusinessTypeState extends State<CompanyBusinessType> {
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
                index: 3,
                completedIndexes: [1, 2],
              ),
              SizedBox(
                height: 24.h,
              ),
              CommonDropdownButton(
                label: 'Business Type',
                items: const ['Restaurant', 'Office'],
                onSaved: (e) {},
                onChange: (e) {},
                hintText: 'Select Business Type',
              ),
              SizedBox(
                height: 16.h,
              ),
              CommonDropdownButton(
                label: 'Pay Day',
                items: const ['Restaurant', 'Office'],
                onSaved: (e) {},
                onChange: (e) {},
                hintText: 'Once A Month',
              ),
              SizedBox(
                height: 16.h,
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Min',
                          style: AppTextStyle.bodySemiBold17
                              .copyWith(color: AppColors.kBlackColor),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 12.h, horizontal: 16.w),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.r),
                              color: AppColors.kGrayColor4),
                          child: Center(
                            child: Text(
                              '\$1000',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: AppTextStyle.bodyNormal17
                                  .copyWith(color: AppColors.kGrayColor),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Max',
                          style: AppTextStyle.bodySemiBold17
                              .copyWith(color: AppColors.kBlackColor),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 12.h, horizontal: 16.w),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.r),
                              color: AppColors.kGrayColor4),
                          child: Center(
                            child: Text(
                              '\$1000',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: AppTextStyle.bodyNormal17
                                  .copyWith(color: AppColors.kGrayColor),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              CommonButton(
                  onTap: () {
                    Get.toNamed(Routes.companyPreferencesRoute);
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
