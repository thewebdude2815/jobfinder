import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:jobfinder/helpers/app_assets.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';
import 'package:jobfinder/helpers/routes.dart';
import 'package:jobfinder/screens/components/common_appbar.dart';
import 'package:jobfinder/screens/components/common_button.dart';
import 'package:jobfinder/screens/components/common_textfield_with_label.dart';
import 'package:jobfinder/screens/components/custom_stepper.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class Education extends StatefulWidget {
  const Education({super.key});

  @override
  State<Education> createState() => _EducationState();
}

class _EducationState extends State<Education> {
  String _selectedDate = '';
  String _dateCount = '';
  String _range = '';
  String _rangeCount = '';

  showCalendarBox() {
    void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
      setState(() {
        if (args.value is PickerDateRange) {
          _range = '${DateFormat('dd/MM/yyyy').format(args.value.startDate)} -'
              // ignore: lines_longer_than_80_chars
              ' ${DateFormat('dd/MM/yyyy').format(args.value.endDate ?? args.value.startDate)}';
        } else if (args.value is DateTime) {
          _selectedDate = args.value.toString();
        } else if (args.value is List<DateTime>) {
          _dateCount = args.value.length.toString();
        } else {
          _rangeCount = args.value.length.toString();
        }
      });
    }

    return showDialog(
      context: context,
      barrierDismissible: true, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          // <-- SEE HERE
          title: const Text('Select Data Of Birth'),
          content: SizedBox(
            width: 250.w,
            height: 300.h,
            child: SfDateRangePicker(
              onSelectionChanged: _onSelectionChanged,
              selectionMode: DateRangePickerSelectionMode.range,
              initialSelectedRange: PickerDateRange(
                  DateTime.now().subtract(const Duration(days: 4)),
                  DateTime.now().add(const Duration(days: 3))),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhiteColor,
      appBar: CustomAppBar(showBackButton: true, title: 'Education', actions: [
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
                index: 3,
                completedIndexes: [1, 2],
              ),
              SizedBox(
                height: 24.h,
              ),
              CommonTextFieldWithLabel(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
                  label: 'School or University',
                  onSaved: (e) {},
                  validator: (e) {},
                  hintText: 'School or University',
                  filled: true),
              SizedBox(
                height: 16.h,
              ),
              CommonTextFieldWithLabel(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
                  label: 'Location',
                  onSaved: (e) {},
                  validator: (e) {},
                  hintText: 'Enter Location',
                  filled: true),
              SizedBox(
                height: 16.h,
              ),
              CommonTextFieldWithLabel(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
                  label: 'Degree',
                  onSaved: (e) {},
                  validator: (e) {},
                  hintText: 'Ex: Bachelor Of Science',
                  filled: true),
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
                          'Start Date',
                          style: AppTextStyle.bodySemiBold17
                              .copyWith(color: AppColors.kBlackColor),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        GestureDetector(
                          onTap: () {
                            showCalendarBox();
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 12.h, horizontal: 16.w),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.r),
                                color: AppColors.kGrayColor4),
                            child: Center(
                              child: Text(
                                'DD/MM/YYYY',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: AppTextStyle.bodyNormal17
                                    .copyWith(color: AppColors.kGrayColor),
                              ),
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
                          'End Date',
                          style: AppTextStyle.bodySemiBold17
                              .copyWith(color: AppColors.kBlackColor),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        GestureDetector(
                          onTap: () {
                            showCalendarBox();
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 12.h, horizontal: 16.w),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.r),
                                color: AppColors.kGrayColor4),
                            child: Center(
                              child: Text(
                                'DD/MM/YYYY',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: AppTextStyle.bodyNormal17
                                    .copyWith(color: AppColors.kGrayColor),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
              Container(
                height: 29.h,
                width: 311.w,
                decoration: BoxDecoration(
                  color: AppColors.kWhiteColor,
                  borderRadius: BorderRadius.circular(8.r),
                  border: Border.all(color: AppColors.kGrayColor3),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      AppAssets.addMoreIcon,
                      height: 20.h,
                      width: 20.h,
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Text(
                      'Add More',
                      style: AppTextStyle.bodyNormal13
                          .copyWith(color: AppColors.kGrayColor),
                    )
                  ],
                ),
              ),
              const Spacer(),
              CommonButton(
                  onTap: () {
                    Get.toNamed(Routes.experienceRoute);
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
