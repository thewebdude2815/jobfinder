import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';

class MethodOfPaymentWidget extends StatelessWidget {
  final String title;
  const MethodOfPaymentWidget({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.h,
      width: 103.w,
      decoration: BoxDecoration(
          color: AppColors.kGrayColor4, borderRadius: BorderRadius.circular(4)),
      child: Center(
        child: Text(
          title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: AppTextStyle.bodySemiBold17.copyWith(
            color: const Color(0xFF8B8B8B),
          ),
        ),
      ),
    );
  }
}
