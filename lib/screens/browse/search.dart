import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfinder/helpers/app_assets.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';
import 'package:jobfinder/screens/components/browse_job_widget.dart';
import 'package:jobfinder/screens/components/common_textfield.dart';
import 'package:jobfinder/screens/components/custom_tab_bar_widget.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 260.w,
                    child: CommonTextFieldNew(
                      contentPadding: EdgeInsets.symmetric(vertical: 12.h),
                      onSaved: (e) {},
                      validator: (e) {},
                      filled: true,
                      fillColor: AppColors.kGrayColor4,
                      hintText: 'Search',
                      prefixSvg: AppAssets.searchIcon,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    'Cancel',
                    style: AppTextStyle.bodyNormal17
                        .copyWith(color: AppColors.kGrayColor2),
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                height: 32.h,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    CustomTabBarWidget(
                      text: 'All Categories',
                      onTap: () {
                        // Get.toNamed(Routes.categoriesRoute);
                      },
                      selectedValue: 'All Categories',
                      isSearchPage: true,
                    ),
                    SizedBox(
                      width: 36.w,
                    ),
                    CustomTabBarWidget(
                      text: 'Developer',
                      onTap: () {},
                      isSearchPage: true,
                      selectedValue: 'All Categories',
                    ),
                    SizedBox(
                      width: 36.w,
                    ),
                    CustomTabBarWidget(
                      text: 'Banking',
                      onTap: () {},
                      isSearchPage: true,
                      selectedValue: 'All Categories',
                    ),
                    SizedBox(
                      width: 36.w,
                    ),
                    CustomTabBarWidget(
                      text: 'Engineer',
                      onTap: () {},
                      isSearchPage: true,
                      selectedValue: 'All Categories',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return BrowseJobWidget(
                        companyName: 'Creatio Studio',
                        jobTitle: 'Product Designer',
                        location: '349 Irvine, CA',
                        jobType: 'Fulltime',
                        showSaved: false,
                        pay: '\$8K/mo');
                  })
            ],
          ),
        ),
      ),
    );
  }
}
