import 'package:another_stepper/dto/stepper_data.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobfinder/helpers/app_assets.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';
import 'package:jobfinder/screens/components/applied_jobs_widget.dart';
import 'package:jobfinder/screens/components/common_appbar.dart';
import 'package:jobfinder/screens/components/common_button.dart';
import 'package:jobfinder/screens/components/common_textfield.dart';

class AppliedJobs extends StatefulWidget {
  const AppliedJobs({super.key});

  @override
  State<AppliedJobs> createState() => _AppliedJobsState();
}

class _AppliedJobsState extends State<AppliedJobs> {
  bool isSelected = false;
  final List<String> _options2 = [
    'No Experience',
    '1-2 years',
    '3-4 years',
    '4-5 years',
    '5+ years',
    '10+ years',
  ];
  final List<String> _options = [
    'None',
    'High school diploma',
    'Associate',
    'Bachelor’s',
    'Master’s',
    'Doctorate',
  ];
  List<String> filter = [];
  List<String> filter2 = [];

  List<StepperData> stepperData = [
    StepperData(
        title: StepperText("Application submitted",
            textStyle: AppTextStyle.bodyNormal15.copyWith(
                color: AppColors.kBlackColor, fontWeight: FontWeight.w500)),
        subtitle: StepperText(
          "09/23/2024 8:00",
          textStyle:
              AppTextStyle.bodyNormal13.copyWith(color: AppColors.kGrayColor2),
        ),
        iconWidget: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: AppColors.kGreenColor2,
            borderRadius: BorderRadius.all(
              Radius.circular(30.r),
            ),
          ),
          child: const Icon(Icons.check, color: AppColors.kWhiteColor),
        )),
    StepperData(
        title: StepperText("Application submitted",
            textStyle: AppTextStyle.bodyNormal15.copyWith(
                color: AppColors.kBlackColor, fontWeight: FontWeight.w500)),
        subtitle: StepperText(
          "09/23/2024 8:00",
          textStyle:
              AppTextStyle.bodyNormal13.copyWith(color: AppColors.kGrayColor2),
        ),
        iconWidget: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: AppColors.kGreenColor2,
            borderRadius: BorderRadius.all(
              Radius.circular(30.r),
            ),
          ),
          child: const Icon(Icons.check, color: AppColors.kWhiteColor),
        )),
    StepperData(
        title: StepperText("Application submitted",
            textStyle: AppTextStyle.bodyNormal15.copyWith(
                color: AppColors.kBlackColor, fontWeight: FontWeight.w500)),
        subtitle: StepperText(
          "09/23/2024 8:00",
          textStyle:
              AppTextStyle.bodyNormal13.copyWith(color: AppColors.kGrayColor2),
        ),
        iconWidget: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: AppColors.kGreenColor2,
            borderRadius: BorderRadius.all(
              Radius.circular(30.r),
            ),
          ),
          child: const Icon(Icons.check, color: AppColors.kWhiteColor),
        )),
    StepperData(
        title: StepperText("Application submitted",
            textStyle: AppTextStyle.bodyNormal15.copyWith(
                color: AppColors.kBlackColor, fontWeight: FontWeight.w500)),
        subtitle: StepperText(
          "09/23/2024 8:00",
          textStyle:
              AppTextStyle.bodyNormal13.copyWith(color: AppColors.kGrayColor2),
        ),
        iconWidget: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: AppColors.kGreenColor2,
            borderRadius: BorderRadius.all(
              Radius.circular(30.r),
            ),
          ),
          child: const Icon(Icons.check, color: AppColors.kWhiteColor),
        )),
    StepperData(
        title: StepperText("Application submitted",
            textStyle: AppTextStyle.bodyNormal15.copyWith(
                color: AppColors.kBlackColor, fontWeight: FontWeight.w500)),
        subtitle: StepperText(
          "09/23/2024 8:00",
          textStyle:
              AppTextStyle.bodyNormal13.copyWith(color: AppColors.kGrayColor2),
        ),
        iconWidget: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: AppColors.kGreenColor2,
            borderRadius: BorderRadius.all(
              Radius.circular(30.r),
            ),
          ),
          child: const Icon(Icons.check, color: AppColors.kWhiteColor),
        )),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          showBackButton: true,
          title: 'Apply',
          centerTitle: true,
          bgColor: AppColors.kGrayColor7,
          actions: [
            Padding(
              padding: EdgeInsets.only(top: 16.h, right: 16.w),
              child: Text(
                'Cancel',
                style: AppTextStyle.bodyNormal17.copyWith(
                  color: AppColors.kGrayColor2,
                ),
              ),
            )
          ]),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                // margin: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
                color: AppColors.kGrayColor7,
                child: const AppliedJobsWidget(
                  jobTitle: 'UX Designer',
                  companyName: 'Creatio Studio',
                  location: 'Los Angeles, CA',
                  status: 'Portfolio reviewed',
                  detailPage: true,
                ),
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                color: AppColors.kWhiteColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 28.h,
                    ),
                    Text(
                      'Add Cover Letter',
                      style: AppTextStyle.bodyNormal17.copyWith(
                          color: AppColors.kBlackColor,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    CommonTextFieldNew(
                      onSaved: (e) {},
                      validator: (e) {},
                      filled: true,
                      maxLines: 5,
                      hintText: 'Write your letter',
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
                    ),
                    SizedBox(
                      height: 28.h,
                    ),
                    Text(
                      'Upload Resume',
                      style: AppTextStyle.bodyNormal17
                          .copyWith(color: AppColors.kBlackColor),
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    DottedBorder(
                      borderType: BorderType.RRect,
                      color: AppColors.kGrayColor5,
                      strokeWidth: 2,
                      child: ClipRRect(
                        child: Container(
                          height: 72.w,
                          width: 343.w,
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.w, vertical: 16.h),
                          decoration: BoxDecoration(
                              color: AppColors.kWhiteColor,
                              borderRadius: BorderRadius.circular(8.r)),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 20.r,
                                backgroundColor: AppColors.kGrayColor4,
                                child: SvgPicture.asset(
                                  AppAssets.uploadIcon,
                                  height: 16.h,
                                  color: AppColors.kGrayColor10,
                                ),
                              ),
                              SizedBox(
                                width: 16.w,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Upload',
                                    style: AppTextStyle.bodyNormal15.copyWith(
                                        color: AppColors.kBlackColor,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(height: 2.h),
                                  Text(
                                    '.pdf, .doc, .txt, .rtf accepted',
                                    style: AppTextStyle.bodyNormal13.copyWith(
                                        color: AppColors.kGrayColor2,
                                        fontWeight: FontWeight.w400),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Text(
                      'Upload your CV/resume or any other relevant. Max. file size: 30MB.',
                      style: AppTextStyle.bodyNormal13
                          .copyWith(color: AppColors.kGrayColor10),
                    ),
                    SizedBox(
                      height: 28.h,
                    ),
                    Text(
                      'Your Experience',
                      style: AppTextStyle.bodyNormal17.copyWith(
                          color: AppColors.kBlackColor,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 18.h,
                    ),
                    Wrap(
                      spacing: 6,
                      runSpacing: 10.0,
                      children: _options2.map((e) {
                        return FilterChip(
                          showCheckmark: false,
                          clipBehavior: Clip.none,
                          backgroundColor: AppColors.kWhiteColor,
                          shape: const StadiumBorder(
                              side: BorderSide(
                                  color: AppColors.kMainColor, width: 1)),
                          label: Text(
                            e,
                            style: AppTextStyle.bodyNormal13.copyWith(
                                color: filter2.contains(e)
                                    ? AppColors.kWhiteColor
                                    : AppColors.kMainColor),
                            overflow: TextOverflow.visible,
                          ),
                          selected: filter2.contains(e),
                          selectedColor: AppColors.kMainColor,
                          onSelected: (bool selected) {
                            setState(() {
                              if (selected) {
                                filter2.add(e);
                              } else {
                                filter2.removeWhere((name) {
                                  return name == e;
                                });
                              }
                            });
                          },
                        );
                      }).toList(),
                    ),
                    SizedBox(
                      height: 28.h,
                    ),
                    Text(
                      'Your Education',
                      style: AppTextStyle.bodyNormal17.copyWith(
                          color: AppColors.kBlackColor,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 18.h,
                    ),
                    Wrap(
                      spacing: 6,
                      runSpacing: 10.0,
                      children: _options.map((e) {
                        return FilterChip(
                          showCheckmark: false,
                          clipBehavior: Clip.none,
                          backgroundColor: AppColors.kWhiteColor,
                          shape: const StadiumBorder(
                              side: BorderSide(
                                  color: AppColors.kMainColor, width: 1)),
                          label: Text(
                            e,
                            style: AppTextStyle.bodyNormal13.copyWith(
                                color: filter.contains(e)
                                    ? AppColors.kWhiteColor
                                    : AppColors.kMainColor),
                            overflow: TextOverflow.visible,
                          ),
                          selected: filter.contains(e),
                          selectedColor: AppColors.kMainColor,
                          onSelected: (bool selected) {
                            setState(() {
                              if (selected) {
                                filter.add(e);
                              } else {
                                filter.removeWhere((name) {
                                  return name == e;
                                });
                              }
                            });
                          },
                        );
                      }).toList(),
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
        child: CommonButton(
            onTap: () {},
            text: 'Send Now',
            isItalicText: true,
            isFilled: true,
            hasIcon: false),
      ),
    );
  }
}

class AppliedJobInformationRow extends StatelessWidget {
  final String heading, value;
  const AppliedJobInformationRow({
    required this.heading,
    required this.value,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: AppColors.kGrayColor4, width: 1),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              color: AppColors.kGrayColor7,
              padding: EdgeInsets.only(top: 12.h, bottom: 12.h, left: 16.w),
              child: Text(
                heading,
                style: AppTextStyle.bodyNormal17
                    .copyWith(color: AppColors.kGrayColor2),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: AppColors.kWhiteColor,
              padding: EdgeInsets.only(top: 12.h, bottom: 12.h, left: 16.w),
              child: Text(
                value,
                style: AppTextStyle.bodyNormal17
                    .copyWith(color: AppColors.kBlackColor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
