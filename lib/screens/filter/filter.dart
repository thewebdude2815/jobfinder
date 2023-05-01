import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobfinder/helpers/app_assets.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';
import 'package:jobfinder/screens/components/common_appbar.dart';
import 'package:jobfinder/screens/components/common_button.dart';
import 'package:jobfinder/screens/components/filter_category_widget.dart';
import 'package:jobfinder/screens/components/filter_job_type_row.dart';

class Filter extends StatefulWidget {
  const Filter({super.key});

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  double _startValue = 20;
  double _endValue = 40;
  final List<String> _options = [
    'Entry Level',
    'Mid Level',
    'Top Level',
  ];
  List<String> filter = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhiteColor,
      appBar: CustomAppBar(showBackButton: true, actions: [
        Padding(
          padding: EdgeInsets.only(right: 16.w, top: 16.h),
          child: Text(
            'Reset',
            style: AppTextStyle.bodyNormal17.copyWith(
              color: AppColors.kGrayColor2,
            ),
          ),
        ),
      ]),
      body: SafeArea(
        child: SingleChildScrollView(
          // padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Text(
                  'Filter',
                  style: AppTextStyle.bodyBold34.copyWith(
                      color: AppColors.kBlackColor,
                      fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16.w),
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                decoration: BoxDecoration(
                    color: AppColors.kGrayColor4,
                    borderRadius: BorderRadius.circular(8.r)),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      AppAssets.locationIcon,
                      color: AppColors.kRedColor,
                      height: 20.h,
                      width: 16.w,
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Text(
                      'San Francisco, United States',
                      style: AppTextStyle.bodyNormal15
                          .copyWith(color: AppColors.kBlackColor),
                    ),
                    const Spacer(),
                    SvgPicture.asset(
                      AppAssets.currentLocationIcon,
                      color: AppColors.kGrayColor,
                      height: 20.h,
                      width: 20.w,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 28.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Text(
                  'Discover Jobs Near You',
                  style: AppTextStyle.bodyNormal17.copyWith(
                      fontWeight: FontWeight.w700,
                      color: AppColors.kBlackColor),
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              RangeSlider(
                min: 0.0,
                max: 100.0,
                labels:
                    RangeLabels(_startValue.toString(), _endValue.toString()),
                activeColor: AppColors.kMainColor,
                inactiveColor: AppColors.kGrayColor5,
                values: RangeValues(_startValue, _endValue),
                onChanged: (values) {
                  setState(() {
                    _startValue = values.start;
                    _endValue = values.end;
                  });
                },
              ),
              SizedBox(
                height: 2.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '0',
                      style: AppTextStyle.bodyNormal15
                          .copyWith(color: AppColors.kGrayColor2),
                    ),
                    Text(
                      '100 miles',
                      style: AppTextStyle.bodyNormal15
                          .copyWith(color: AppColors.kGrayColor2),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 28.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Text(
                  'Job Type',
                  style: AppTextStyle.bodyNormal17.copyWith(
                      fontWeight: FontWeight.w700,
                      color: AppColors.kBlackColor),
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: const [
                    FilterJobTypeRow(
                      text: 'Full Time',
                      isSelected: false,
                    ),
                    FilterJobTypeRow(
                      text: 'Part Time',
                      isSelected: true,
                    ),
                    FilterJobTypeRow(
                      text: 'Contract',
                      isSelected: false,
                    ),
                    FilterJobTypeRow(
                      text: 'Internship',
                      isSelected: false,
                    ),
                    FilterJobTypeRow(
                      text: 'Freelance',
                      isSelected: false,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 28.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Text(
                  'Categories',
                  style: AppTextStyle.bodyNormal17.copyWith(
                      fontWeight: FontWeight.w700,
                      color: AppColors.kBlackColor),
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Row(
                  children: [
                    const Expanded(
                        child: FilterCategoryWidget(
                      text: 'Development',
                      isSelected: false,
                    )),
                    SizedBox(
                      width: 8.w,
                    ),
                    const Expanded(
                        child: FilterCategoryWidget(
                      text: 'Design & Art',
                      isSelected: true,
                    )),
                  ],
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Row(
                  children: [
                    const Expanded(
                        child: FilterCategoryWidget(
                      text: 'Accounting',
                      isSelected: false,
                    )),
                    SizedBox(
                      width: 8.w,
                    ),
                    const Expanded(
                        child: FilterCategoryWidget(
                      text: 'Marketing',
                      isSelected: true,
                    )),
                  ],
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Row(
                  children: [
                    const Expanded(
                        child: FilterCategoryWidget(
                      text: 'Customer Service',
                      isSelected: false,
                    )),
                    SizedBox(
                      width: 8.w,
                    ),
                    const Expanded(
                        child: FilterCategoryWidget(
                      text: 'Health & Care',
                      isSelected: true,
                    )),
                  ],
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Row(
                  children: [
                    const Expanded(
                        child: FilterCategoryWidget(
                      text: 'Human Resource',
                      isSelected: false,
                    )),
                    SizedBox(
                      width: 8.w,
                    ),
                    const Expanded(
                        child: FilterCategoryWidget(
                      text: 'Automotive Jobs',
                      isSelected: true,
                    )),
                  ],
                ),
              ),
              SizedBox(
                height: 28.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Text(
                  'Salary Range',
                  style: AppTextStyle.bodyNormal17.copyWith(
                      fontWeight: FontWeight.w700,
                      color: AppColors.kBlackColor),
                ),
              ),
              SizedBox(
                height: 18.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Text(
                  '\$10-\$87',
                  style: AppTextStyle.bodyNormal15
                      .copyWith(color: AppColors.kBlackColor),
                ),
              ),
              SizedBox(height: 8.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Text(
                  'The average salary is \$45',
                  style: AppTextStyle.bodyNormal15
                      .copyWith(color: AppColors.kGrayColor),
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              Padding(
                padding: EdgeInsets.zero,
                child: SizedBox(
                  width: double.infinity,
                  child: RangeSlider(
                    min: 0.0,
                    max: 100.0,
                    labels: RangeLabels(
                        _startValue.toString(), _endValue.toString()),
                    activeColor: AppColors.kMainColor,
                    inactiveColor: AppColors.kGrayColor5,
                    values: RangeValues(_startValue, _endValue),
                    onChanged: (values) {
                      setState(() {
                        _startValue = values.start;
                        _endValue = values.end;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 28.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Text(
                  'Experience Level',
                  style: AppTextStyle.bodyNormal17.copyWith(
                      fontWeight: FontWeight.w700,
                      color: AppColors.kBlackColor),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Wrap(
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
              ),
              SizedBox(
                height: 28.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Text(
                  'Company Rating',
                  style: AppTextStyle.bodyNormal17.copyWith(
                      fontWeight: FontWeight.w700,
                      color: AppColors.kBlackColor),
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Row(
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 8.h, horizontal: 20.w),
                      decoration: BoxDecoration(
                          color: AppColors.kMainColor,
                          border: Border.all(color: AppColors.kMainColor),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16.r),
                            bottomLeft: Radius.circular(16.r),
                          )),
                      child: Row(
                        children: [
                          Text(
                            '1',
                            style: AppTextStyle.bodyNormal13.copyWith(
                                color: AppColors.kWhiteColor,
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.italic),
                          ),
                          SizedBox(
                            width: 4.w,
                          ),
                          Icon(
                            Icons.star,
                            color: AppColors.kWhiteColor,
                            size: 15.h,
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 8.h, horizontal: 20.w),
                      decoration: BoxDecoration(
                          border: Border.all(color: AppColors.kGrayColor5)),
                      child: Row(
                        children: [
                          Text(
                            '2',
                            style: AppTextStyle.bodyNormal13.copyWith(
                                color: AppColors.kBlackColor,
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.italic),
                          ),
                          SizedBox(
                            width: 4.w,
                          ),
                          Icon(
                            Icons.star,
                            color: AppColors.kOrangeColor,
                            size: 15.h,
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 8.h, horizontal: 20.w),
                      decoration: BoxDecoration(
                          border: Border.all(color: AppColors.kGrayColor5)),
                      child: Row(
                        children: [
                          Text(
                            '3',
                            style: AppTextStyle.bodyNormal13.copyWith(
                                color: AppColors.kBlackColor,
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.italic),
                          ),
                          SizedBox(
                            width: 4.w,
                          ),
                          Icon(
                            Icons.star,
                            color: AppColors.kOrangeColor,
                            size: 15.h,
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 8.h, horizontal: 20.w),
                      decoration: BoxDecoration(
                          border: Border.all(color: AppColors.kGrayColor5)),
                      child: Row(
                        children: [
                          Text(
                            '4',
                            style: AppTextStyle.bodyNormal13.copyWith(
                                color: AppColors.kBlackColor,
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.italic),
                          ),
                          SizedBox(
                            width: 4.w,
                          ),
                          Icon(
                            Icons.star,
                            color: AppColors.kOrangeColor,
                            size: 15.h,
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 8.h, horizontal: 20.w),
                      decoration: BoxDecoration(
                          color: AppColors.kWhiteColor,
                          border: Border.all(color: AppColors.kGrayColor5),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(16.r),
                            bottomRight: Radius.circular(16.r),
                          )),
                      child: Row(
                        children: [
                          Text(
                            '5',
                            style: AppTextStyle.bodyNormal13.copyWith(
                                color: AppColors.kBlackColor,
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.italic),
                          ),
                          SizedBox(
                            width: 4.w,
                          ),
                          Icon(
                            Icons.star,
                            color: AppColors.kOrangeColor,
                            size: 15.h,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
        child: CommonButton(
            onTap: () {},
            text: 'Apply Filters',
            isItalicText: true,
            isFilled: true,
            hasIcon: false),
      ),
    );
  }
}
