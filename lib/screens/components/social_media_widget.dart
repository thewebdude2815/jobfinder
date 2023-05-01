import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobfinder/helpers/app_colors.dart';

class SocialMediaWidget extends StatelessWidget {
  final String icon;
  const SocialMediaWidget({
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 25.r,
      backgroundColor: AppColors.kGrayColor4,
      child: SvgPicture.asset(
        icon,
        color: AppColors.kGrayColor10,
        height: 20.h,
      ),
    );
  }
}
