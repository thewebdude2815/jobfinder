import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';
import 'package:jobfinder/helpers/routes.dart';
import 'package:jobfinder/screens/components/common_appbar.dart';
import 'package:jobfinder/screens/components/common_button.dart';

class Interests extends StatefulWidget {
  const Interests({super.key});

  @override
  State<Interests> createState() => _InterestsState();
}

class _InterestsState extends State<Interests> {
  @override
  Widget build(BuildContext context) {
    final List<String> _options = [
      'History',
      'Sports',
      'Art',
      'Entertainment',
      'Music',
      'Movies',
      'Mobile',
    ];
    List<String> filter = [];
    return Scaffold(
      backgroundColor: AppColors.kWhiteColor,
      appBar: CustomAppBar(
        showBackButton: true,
        centerTitle: true,
        title: 'Choose Interests',
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              SizedBox(
                height: 30.h,
              ),
              Text(
                'Choose 5 or more areas of interest you want to see',
                style: AppTextStyle.bodyNormal17
                    .copyWith(color: AppColors.kBlackColor),
              ),
              SizedBox(
                height: 40.h,
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
                        side:
                            BorderSide(color: AppColors.kMainColor, width: 1)),
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
              const Spacer(),
              CommonButton(
                onTap: () {
                  Get.toNamed(Routes.bottomNavBarRoute);
                },
                text: 'Done',
                isItalicText: false,
                isFilled: true,
                hasIcon: false,
                width: double.infinity,
              ),
              SizedBox(
                height: 12.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
