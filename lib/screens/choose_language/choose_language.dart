import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:jobfinder/helpers/app_assets.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';
import 'package:jobfinder/helpers/routes.dart';
import 'package:jobfinder/screens/components/common_button.dart';

class ChooseLanguage extends StatefulWidget {
  const ChooseLanguage({super.key});

  @override
  State<ChooseLanguage> createState() => _ChooseLanguageState();
}

class _ChooseLanguageState extends State<ChooseLanguage> {
  final List<String> _options = [
    'English',
    'Chinese',
    'Portugese',
    'Korean',
    'Hindi',
    'Spanish',
    'Japenes',
    'Russian'
  ];
  List<String> filter = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30.h,
              ),
              CircleAvatar(
                radius: 35.r,
              ),
              SizedBox(
                height: 24.h,
              ),
              Text(
                'Hi, Brooklyn',
                style: AppTextStyle.bodyBold40.copyWith(
                  color: AppColors.kBlackColor,
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Text(
                'Please select your preferred language to facilitate communication',
                style: AppTextStyle.bodyNormal17
                    .copyWith(color: AppColors.kGrayColor2),
              ),
              SizedBox(
                height: 40.h,
              ),
              Wrap(
                spacing: 6,
                runSpacing: 10.0,
                children: _options.map((e) {
                  return FilterChip(
                    avatar: filter.contains(e)
                        ? SvgPicture.asset(
                            AppAssets.checkIcon,
                            height: 20.h,
                            width: 20.w,
                          )
                        : CircleAvatar(
                            radius: 10.r,
                            backgroundColor: filter.contains(e)
                                ? Colors.transparent
                                : AppColors.kGrayColor3,
                            child: CircleAvatar(
                              radius: 9.r,
                              backgroundColor: AppColors.kWhiteColor,
                            ),
                          ),
                    showCheckmark: true,
                    clipBehavior: Clip.none,
                    backgroundColor: Colors.transparent,
                    shape: const StadiumBorder(side: BorderSide.none),
                    label: Text(
                      e,
                      style: AppTextStyle.bodyNormal17
                          .copyWith(color: AppColors.kBlackColor),
                      overflow: TextOverflow.visible,
                    ),
                    selected: filter.contains(e),
                    selectedColor: Colors.transparent,
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
                height: 40.h,
              ),
              CommonButton(
                  onTap: () {
                    Get.toNamed(Routes.jobPreferencesCategoriesRoute);
                  },
                  text: 'Select',
                  isItalicText: false,
                  width: double.infinity,
                  isFilled: true,
                  hasIcon: false)
            ],
          ),
        ),
      ),
    );
  }
}
