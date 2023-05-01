import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobfinder/helpers/app_assets.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';
import 'package:jobfinder/helpers/routes.dart';
import 'package:jobfinder/screens/components/banner_slider.dart';
import 'package:jobfinder/screens/components/browse_job_widget.dart';
import 'package:jobfinder/screens/components/common_dropdown.dart';
import 'package:jobfinder/screens/components/custom_tab_bar_widget.dart';

class Browse extends StatelessWidget {
  const Browse({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                color: AppColors.kMainColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 16.h,
                    ),
                    Row(
                      children: [
                        const Spacer(),
                        SvgPicture.asset(
                          AppAssets.bellIcon,
                          height: 24.h,
                          width: 20.w,
                          color: AppColors.kGrayColor5,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(Routes.browse2Route);
                      },
                      child: Text(
                        'Find your dream job in',
                        style: GoogleFonts.abel(
                            fontSize: 28.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.kWhiteColor),
                      ),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    SizedBox(
                      width: 223.w,
                      child: CommonDropdownButton(
                        items: ["Seoul", "London"],
                        isFilled: false,
                        onSaved: (e) {},
                        onChange: (e) {},
                        hintText: 'Select Location',
                      ),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(Routes.searchRoute);
                      },
                      child: Container(
                        width: 343.w,
                        height: 50.h,
                        padding: EdgeInsets.only(left: 16.w),
                        decoration: BoxDecoration(
                            color: AppColors.kWhiteColor,
                            borderRadius: BorderRadius.circular(8.r)),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              AppAssets.searchIcon,
                              color: AppColors.kGrayColor10,
                              height: 14.h,
                              width: 14.w,
                            ),
                            SizedBox(
                              width: 8.w,
                            ),
                            Text(
                              'Search for everthing...',
                              style: AppTextStyle.bodyNormal17
                                  .copyWith(color: AppColors.kGrayColor10),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    SizedBox(
                      height: 24.h,
                      child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children: [
                          CustomTabBarWidget(
                            text: 'All Categories',
                            onTap: () {
                              Get.toNamed(Routes.categoriesRoute);
                            },
                            selectedValue: 'All Categories',
                            isSearchPage: false,
                          ),
                          SizedBox(
                            width: 36.w,
                          ),
                          CustomTabBarWidget(
                            text: 'Developer',
                            onTap: () {},
                            selectedValue: 'All Categories',
                            isSearchPage: false,
                          ),
                          SizedBox(
                            width: 36.w,
                          ),
                          CustomTabBarWidget(
                            text: 'Banking',
                            onTap: () {},
                            selectedValue: 'All Categories',
                            isSearchPage: false,
                          ),
                          SizedBox(
                            width: 36.w,
                          ),
                          CustomTabBarWidget(
                            text: 'Engineer',
                            onTap: () {},
                            selectedValue: 'All Categories',
                            isSearchPage: false,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 18.h,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Recent Posts',
                      style: AppTextStyle.bodySemiBold17.copyWith(
                          color: AppColors.kBlackColor,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    const CustomBannerSlider(),
                    SizedBox(
                      height: 16.h,
                    ),
                    Container(
                      height: 44.h,
                      decoration: BoxDecoration(
                        color: AppColors.kGrayColor7,
                        border: Border.all(color: AppColors.kGrayColor4),
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              decoration: const BoxDecoration(
                                  border: Border(
                                right: BorderSide(
                                  color: AppColors.kGrayColor4,
                                ),
                              )),
                              child: DropdownButtonFormField2(
                                iconStyleData: const IconStyleData(
                                    iconEnabledColor: AppColors.kGrayColor10),
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(
                                      top: 8.h, bottom: 12.h, right: 12.w),
                                  fillColor: Colors.transparent,
                                  filled: true,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12.r),
                                    borderSide: BorderSide(
                                      width: 0.h,
                                      color: AppColors.kGrayColor4,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12.r),
                                    borderSide: BorderSide(
                                      width: 0.h,
                                      color: AppColors.kGrayColor4,
                                    ),
                                  ),
                                ),
                                isExpanded: true,
                                hint: Text(
                                  "Best Match",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: AppTextStyle.bodyNormal15
                                      .copyWith(color: AppColors.kGrayColor2),
                                ),
                                items: ['Best Match', 'Filter']
                                    .map(
                                      (item) => DropdownMenuItem<String>(
                                        value: item,
                                        child: Text(
                                          item,
                                          style: AppTextStyle.bodyNormal15
                                              .copyWith(
                                                  color: AppColors.kGrayColor2),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    )
                                    .toList(),
                                value: 'Best Match',
                                onSaved: (e) {},
                                onChanged: (e) {},
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              decoration: const BoxDecoration(
                                  border: Border(
                                right: BorderSide(
                                  color: AppColors.kGrayColor4,
                                ),
                              )),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    AppAssets.sortIcon,
                                    height: 16.h,
                                    width: 13.w,
                                    color: AppColors.kGrayColor10,
                                  ),
                                  SizedBox(
                                    width: 8.w,
                                  ),
                                  Text(
                                    'Sort',
                                    style: AppTextStyle.bodyNormal15
                                        .copyWith(color: AppColors.kGrayColor2),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  AppAssets.filterIcon,
                                  height: 12.h,
                                  width: 14.w,
                                  color: AppColors.kGrayColor10,
                                ),
                                SizedBox(
                                  width: 8.w,
                                ),
                                Text(
                                  'Filter',
                                  style: AppTextStyle.bodyNormal15
                                      .copyWith(color: AppColors.kGrayColor2),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    BrowseJobWidget(
                        companyName: 'Creatio Studio',
                        jobTitle: 'Product Designer',
                        location: '349 Irvine, CA',
                        jobType: 'Fulltime',
                        showSaved: true,
                        pay: '\$8K/mo')
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
