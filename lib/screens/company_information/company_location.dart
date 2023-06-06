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

class CompanyLocation extends StatefulWidget {
  const CompanyLocation({super.key});

  @override
  State<CompanyLocation> createState() => _CompanyLocationState();
}

class _CompanyLocationState extends State<CompanyLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhiteColor,
      appBar: CustomAppBar(showBackButton: true, title: 'Location', actions: [
        Padding(
          padding: EdgeInsets.only(right: 16.w, top: 16.h),
          child: Text(
            'Save',
            style:
                AppTextStyle.bodyNormal17.copyWith(color: AppColors.kMainColor),
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
                index: 2,
                completedIndexes: [1],
              ),
              SizedBox(
                height: 24.h,
              ),
              CommonDropdownButton(
                label: 'Country',
                items: const ['USA', 'UAE'],
                onSaved: (e) {},
                onChange: (e) {},
                hintText: 'Select Country',
              ),
              CommonTextFieldWithLabel(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
                  label: 'Street Address',
                  onSaved: (e) {},
                  validator: (e) {},
                  hintText: 'Address',
                  filled: true),
              SizedBox(
                height: 16.h,
              ),
              CommonTextFieldNew(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
                  onSaved: (e) {},
                  validator: (e) {},
                  hintText: 'Additional Address',
                  filled: true),
              SizedBox(
                height: 16.h,
              ),
              CommonTextFieldWithLabel(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
                  label: 'City, State',
                  onSaved: (e) {},
                  validator: (e) {},
                  hintText: 'Enter City, State',
                  filled: true),
              SizedBox(
                height: 16.h,
              ),
              CommonTextFieldWithLabel(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
                  label: 'Postal Code',
                  onSaved: (e) {},
                  validator: (e) {},
                  hintText: 'Enter Postal Code',
                  filled: true),
              const Spacer(),
              CommonButton(
                  onTap: () {
                    Get.toNamed(Routes.companyBusinessTypeRoute);
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
