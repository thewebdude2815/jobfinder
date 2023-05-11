import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';

class PaymentWidget extends StatelessWidget {
  final String days;
  final String price;
  const PaymentWidget({
    required this.days,
    required this.price,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 28.h),
      width: double.infinity,
      decoration: BoxDecoration(
          color: AppColors.kGrayColor4,
          borderRadius: BorderRadius.circular(12.r)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$days hours',
            style: AppTextStyle.bodyNormal17.copyWith(
                fontWeight: FontWeight.w400, color: AppColors.kGrayColor16),
          ),
          Text(
            '\$$price',
            style: AppTextStyle.bodyNormal17.copyWith(
                fontWeight: FontWeight.w400, color: AppColors.kGrayColor16),
          ),
        ],
      ),
    );
  }
}
