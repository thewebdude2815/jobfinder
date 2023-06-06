import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';

class PaymentWidget extends StatelessWidget {
  final String days;
  final String price;
  final String selectedValue;
  final void Function() onTap;

  const PaymentWidget({
    required this.days,
    required this.price,
    required this.onTap,
    required this.selectedValue,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 28.h),
        width: double.infinity,
        decoration: BoxDecoration(
            color: selectedValue == days
                ? AppColors.kMainColor
                : AppColors.kGrayColor4,
            borderRadius: BorderRadius.circular(12.r)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '$days hours',
              style: AppTextStyle.bodyNormal17.copyWith(
                  fontWeight: FontWeight.w400,
                  color: selectedValue == days
                      ? AppColors.kWhiteColor
                      : AppColors.kGrayColor16),
            ),
            Text(
              '\$$price',
              style: AppTextStyle.bodyNormal17.copyWith(
                  fontWeight: FontWeight.w400,
                  color: selectedValue == days
                      ? AppColors.kWhiteColor
                      : AppColors.kGrayColor16),
            ),
          ],
        ),
      ),
    );
  }
}
