import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jobfinder/helpers/app_assets.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';
import 'package:jobfinder/helpers/routes.dart';
import 'package:jobfinder/screens/components/common_appbar.dart';
import 'package:jobfinder/screens/components/common_button.dart';

class PremiumPayment extends StatelessWidget {
  const PremiumPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhiteColor,
      appBar: CustomAppBar(
          showBackButton: true,
          title: 'Almost Done',
          centerTitle: true,
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 16.w, top: 16.h),
              child: Text(
                'Save',
                style: AppTextStyle.bodyNormal17.copyWith(
                  color: AppColors.kMainColor,
                ),
              ),
            ),
          ]),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 16.h),
              margin: EdgeInsets.symmetric(horizontal: 16.w),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xFFCDCDCD),
                  ),
                  borderRadius: BorderRadius.circular(16.r)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: CircleAvatar(
                      radius: 12.r,
                      backgroundColor: AppColors.kMainColor,
                      child: CircleAvatar(
                        radius: 11.r,
                        backgroundColor: AppColors.kWhiteColor,
                        child: CircleAvatar(
                          radius: 10.r,
                          backgroundColor: AppColors.kMainColor,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  const PremiumPaymentWidget(),
                  SizedBox(
                    height: 16.h,
                  ),
                  const PremiumPaymentWidget(),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(8.h),
        child: CommonButton(
            onTap: () {
              Get.toNamed(Routes.personalInfoRoute);
            },
            text: 'Done',
            isItalicText: true,
            isFilled: true,
            hasIcon: false),
      ),
    );
  }
}

class PremiumPaymentWidget extends StatelessWidget {
  const PremiumPaymentWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Title',
                      style: AppTextStyle.bodyNormal17.copyWith(
                          color: AppColors.kBlackColor,
                          fontWeight: FontWeight.w300),
                    ),
                    Text(
                      'Heading',
                      style: AppTextStyle.bodyNormal17.copyWith(
                          color: AppColors.kBlackColor,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'Title 2',
                      style: AppTextStyle.bodyNormal17.copyWith(
                          color: AppColors.kBlackColor,
                          fontWeight: FontWeight.w300),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 12.h, vertical: 4.w),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.r),
                            border: Border.all(
                              color: const Color(0xFF9E6CD1),
                            ),
                          ),
                          child: Text(
                            'Hour',
                            style: AppTextStyle.bodyNormal17.copyWith(
                                fontWeight: FontWeight.w600,
                                color: const Color(0xFF9E6CD1),
                                fontStyle: FontStyle.italic),
                          ),
                        ),
                        SizedBox(
                          width: 8.w,
                        ),
                        Text(
                          '100,00 w',
                          style: AppTextStyle.bodyNormal17.copyWith(
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.italic,
                              color: AppColors.kBlackColor),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 18.h,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 12.w, vertical: 2.h),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF0F0F0),
                        borderRadius: BorderRadius.circular(4.r),
                      ),
                      child: Text(
                        '#some',
                        style: AppTextStyle.bodyNormal10.copyWith(
                            color: AppColors.kBlackColor,
                            fontWeight: FontWeight.w300),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.r),
                  child: Image.asset(
                    AppAssets.office,
                    height: 99.52.w,
                    width: 99.52.w,
                    fit: BoxFit.cover,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
