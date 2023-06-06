import 'package:another_stepper/dto/stepper_data.dart';
import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';
import 'package:jobfinder/screens/components/applied_job_information_row.dart';
import 'package:jobfinder/screens/components/applied_jobs_widget.dart';
import 'package:jobfinder/screens/components/common_appbar.dart';

class AppliedJobsDetails extends StatefulWidget {
  const AppliedJobsDetails({super.key});

  @override
  State<AppliedJobsDetails> createState() => _AppliedJobsDetailsState();
}

class _AppliedJobsDetailsState extends State<AppliedJobsDetails> {
  bool isSelected = false;
  final List<String> _options = [
    'Problem Solving',
    'Technical Skills',
    'Android',
    'iOS',
    'Design',
    'Website',
    'Mobile',
  ];
  List<String> filter = [];
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
          title: 'Applied Job Details',
          centerTitle: true,
          bgColor: AppColors.kGrayColor7,
          actions: [
            Padding(
              padding: EdgeInsets.only(top: 4.h, right: 16.w),
              child: Icon(
                Icons.more_horiz_rounded,
                color: AppColors.kBlackColor,
                size: 20.w,
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
                      'Track Application',
                      style: AppTextStyle.bodyNormal17.copyWith(
                          color: AppColors.kBlackColor,
                          fontWeight: FontWeight.w700),
                    ),
                    AnotherStepper(
                      stepperList: stepperData,
                      stepperDirection: Axis.vertical,
                      iconWidth:
                          40, // Height that will be applied to all the stepper icons
                      iconHeight:
                          40, // Width that will be applied to all the stepper icons
                      verticalGap: 20,
                      barThickness: 1,
                      activeBarColor: AppColors.kGrayColor4,
                    ),
                    Text(
                      'Highlights',
                      style: AppTextStyle.bodyNormal17
                          .copyWith(color: AppColors.kBlackColor),
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    const AppliedJobInformationRow(
                      heading: 'Location',
                      value: 'Irvine, CA',
                    ),
                    const AppliedJobInformationRow(
                      heading: 'Experience',
                      value: '2+ years',
                    ),
                    const AppliedJobInformationRow(
                      heading: 'Salary',
                      value: '\$2K - \$7K/mo',
                    ),
                    const AppliedJobInformationRow(
                      heading: 'Job Type',
                      value: 'Full Time',
                    ),
                    const AppliedJobInformationRow(
                      heading: 'Job Title',
                      value: 'Manager',
                    ),
                    SizedBox(
                      height: 28.h,
                    ),
                    Text(
                      'Job Skills',
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
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
