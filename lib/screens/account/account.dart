import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:jobfinder/helpers/app_assets.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';
import 'package:jobfinder/helpers/routes.dart';
import 'package:jobfinder/screens/components/account_heading_with_edit_button.dart';
import 'package:jobfinder/screens/components/expandable_text.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
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
  late ScrollController scrollController = ScrollController();
  @override
  void initState() {
    // scrollController.initialScrollOffset;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: StickyHeader(
            // controller: scrollController,
            header: Container(
              color: AppColors.kGrayColor7,
              child: Column(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.toNamed(Routes.settingsRoute);
                          },
                          child: SvgPicture.asset(
                            AppAssets.settingsIcon,
                            color: AppColors.kBlackColor,
                            height: 20.h,
                            width: 20.w,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.toNamed(Routes.settingsRoute);
                          },
                          child: Icon(
                            Icons.more_horiz_sharp,
                            color: AppColors.kBlackColor,
                            size: 16.w,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Row(
                      children: [
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
                                  child: SvgPicture.asset(
                                    AppAssets.editIcon,
                                    color: AppColors.kWhiteColor,
                                    height: 14.h,
                                    width: 14.w,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 16.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Ayesha Vassilieva',
                              style: AppTextStyle.bodyBold24
                                  .copyWith(color: AppColors.kBlackColor),
                            ),
                            SizedBox(
                              height: 4.h,
                            ),
                            Text(
                              'Senior Designer',
                              style: AppTextStyle.bodyNormal15
                                  .copyWith(color: AppColors.kGrayColor2),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                ],
              ),
            ),
            content: SingleChildScrollView(
              child: Container(
                // color: AppColors.kWhiteColor,
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 16.h,
                    ),
                    Text(
                      'Profile completeness 87%',
                      style: AppTextStyle.bodyNormal15
                          .copyWith(color: AppColors.kBlackColor),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    LinearPercentIndicator(
                      padding: EdgeInsets.zero,
                      width: 343.w,
                      animation: true,
                      lineHeight: 4.h,
                      animationDuration: 5000,
                      percent: 0.8,
                      barRadius: Radius.circular(18.r),
                      progressColor: AppColors.kMainColor,
                      backgroundColor: AppColors.kGrayColor5,
                    ),
                    SizedBox(
                      height: 28.h,
                    ),
                    const AccountHeadingWithEditButton(
                      heading: 'About Me',
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    const ExpandableText(
                      max: 0.6,
                      text:
                          'I know I can help your company create stunning visuals. As someone who has worked in marketing and graphic design for over a decade, I know what brands need to capture their audiences attention. With my pow',
                    ),
                    SizedBox(
                      height: 18.h,
                    ),
                    Container(
                      width: 343.w,
                      padding: EdgeInsets.symmetric(
                          vertical: 14.h, horizontal: 16.w),
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.kGrayColor8),
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: IntrinsicHeight(
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Text(
                                    '100',
                                    style: AppTextStyle.bodySemiBold20
                                        .copyWith(color: AppColors.kBlueColor),
                                  ),
                                  Text(
                                    'Posts',
                                    style: AppTextStyle.bodyNormal13.copyWith(
                                        color: const Color(0xFF434343)),
                                  ),
                                ],
                              ),
                            ),
                            const VerticalDivider(
                              indent: 10,
                              endIndent: 10,
                              color: AppColors.kGrayColor9,
                              thickness: 2,
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Text(
                                    '100',
                                    style: AppTextStyle.bodySemiBold20
                                        .copyWith(color: AppColors.kBlueColor),
                                  ),
                                  Text(
                                    'Scraped',
                                    style: AppTextStyle.bodyNormal13.copyWith(
                                        color: const Color(0xFF434343)),
                                  ),
                                ],
                              ),
                            ),
                            const VerticalDivider(
                              indent: 10,
                              endIndent: 10,
                              color: AppColors.kGrayColor9,
                              thickness: 2,
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Text(
                                    '1,000',
                                    style: AppTextStyle.bodySemiBold20
                                        .copyWith(color: AppColors.kBlueColor),
                                  ),
                                  Text(
                                    'Followers',
                                    style: AppTextStyle.bodyNormal13.copyWith(
                                        color: const Color(0xFF434343)),
                                  ),
                                ],
                              ),
                            ),
                            const VerticalDivider(
                              indent: 10,
                              endIndent: 10,
                              color: AppColors.kGrayColor9,
                              thickness: 2,
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Text(
                                    '1',
                                    style: AppTextStyle.bodySemiBold20
                                        .copyWith(color: AppColors.kBlueColor),
                                  ),
                                  Text(
                                    'Following',
                                    style: AppTextStyle.bodyNormal13.copyWith(
                                        color: const Color(0xFF434343)),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 18.h,
                    ),
                    const AccountHeadingWithEditButton(
                      heading: 'Skills',
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
                      height: 16.h,
                    ),
                    const AccountHeadingWithEditButton(
                      heading: 'My Resume',
                    ),
                    SizedBox(
                      height: 18.h,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 16.w, vertical: 16.h),
                      decoration: BoxDecoration(
                          color: AppColors.kGrayColor4,
                          borderRadius: BorderRadius.circular(8.r)),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 25.r,
                            backgroundColor: AppColors.kMainColor,
                            child: Center(
                              child: SvgPicture.asset(
                                AppAssets.fileIcon,
                                color: AppColors.kWhiteColor,
                                height: 16.h,
                                width: 13.w,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 16.w,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Ayesha Resume',
                                style: AppTextStyle.bodyNormal15
                                    .copyWith(color: AppColors.kBlackColor),
                              ),
                              SizedBox(
                                height: 2.h,
                              ),
                              Text(
                                'Updated on 28 September 2024',
                                style: AppTextStyle.bodyNormal13
                                    .copyWith(color: AppColors.kGrayColor2),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
