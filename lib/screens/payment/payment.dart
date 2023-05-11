import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:jobfinder/helpers/app_assets.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';
import 'package:jobfinder/helpers/routes.dart';
import 'package:jobfinder/screens/components/common_appbar.dart';
import 'package:jobfinder/screens/components/common_button.dart';
import 'package:jobfinder/screens/components/common_textfield.dart';
import 'package:jobfinder/screens/components/method_of_payment_widget.dart';
import 'package:jobfinder/screens/components/payment_widget.dart';

class Payment extends StatelessWidget {
  const Payment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhiteColor,
      appBar: CustomAppBar(
          showBackButton: true,
          title: 'Payment',
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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 16.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Choose the plan',
                      style: AppTextStyle.bodyNormal17.copyWith(
                          fontStyle: FontStyle.italic,
                          color: AppColors.kBlackColor),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    const PaymentWidget(
                      days: '24',
                      price: '9',
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    const PaymentWidget(
                      days: '3',
                      price: '29',
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    const PaymentWidget(
                      days: '7',
                      price: '50',
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    const PaymentWidget(
                      days: '14',
                      price: '90',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              Container(
                width: double.infinity,
                color: AppColors.kGrayColor4,
                padding: EdgeInsets.symmetric(vertical: 28.h, horizontal: 12.w),
                child: Text(
                  'Coupon',
                  style: AppTextStyle.bodyNormal17.copyWith(
                      color: const Color(0xFF828282),
                      fontStyle: FontStyle.italic),
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: CommonTextFieldNew(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 16.h, horizontal: 12.w),
                  onSaved: (e) {},
                  validator: (e) {},
                  filled: false,
                  hintText: 'Insert Coupon Number',
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: CommonButton(
                    width: double.infinity,
                    onTap: () {},
                    text: 'Register',
                    isItalicText: true,
                    isFilled: true,
                    hasIcon: false),
              ),
              SizedBox(
                height: 24.h,
              ),
              Container(
                width: double.infinity,
                color: AppColors.kGrayColor4,
                padding: EdgeInsets.symmetric(vertical: 28.h, horizontal: 12.w),
                child: Text(
                  'Method Of Payment',
                  style: AppTextStyle.bodyNormal17.copyWith(
                      color: const Color(0xFF828282),
                      fontStyle: FontStyle.italic),
                ),
              ),
              SizedBox(
                height: 28.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Row(
                  children: [
                    const Expanded(
                      child: MethodOfPaymentWidget(
                        title: 'Credit Card',
                      ),
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    const Expanded(
                      child: MethodOfPaymentWidget(
                        title: 'Transfer Money',
                      ),
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    const Expanded(
                      child: MethodOfPaymentWidget(
                        title: 'Wire',
                      ),
                    )
                  ],
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
                      child: MethodOfPaymentWidget(
                        title: 'Stripe',
                      ),
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    const Expanded(
                      child: MethodOfPaymentWidget(
                        title: 'Kakao Pay',
                      ),
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    const Expanded(
                      child: MethodOfPaymentWidget(
                        title: 'Paypal',
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    AppAssets.checkIcon,
                    height: 30.h,
                  ),
                  SizedBox(
                    width: 28.w,
                  ),
                  Text(
                    'Agreement Of Payment',
                    style: AppTextStyle.bodyNormal17.copyWith(
                        color: AppColors.kBlackColor,
                        fontStyle: FontStyle.italic),
                  )
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: CommonButton(
                    width: double.infinity,
                    onTap: () {
                      Get.toNamed(Routes.paymentPremiumRoute);
                    },
                    text: 'Continue',
                    isItalicText: true,
                    isFilled: true,
                    hasIcon: false),
              ),
              SizedBox(
                height: 40.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
