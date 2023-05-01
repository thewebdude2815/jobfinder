import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:jobfinder/helpers/app_assets.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';

PreferredSizeWidget CustomAppBar({
  String? title,
  bool showBackButton = true,
  VoidCallback? onLeadingTap,
  List<Widget>? actions,
  bool? centerTitle = true,
  Widget? leadingWidget,
  double? titleSpacing,
  EdgeInsetsGeometry? showButtonPadding,
  TextStyle? textStyle,
  PreferredSizeWidget? bottom,
  Color? bgColor,
}) {
  return AppBar(
    //toolbarHeight: 56.h,
    elevation: 0,
    centerTitle: centerTitle,
    backgroundColor: bgColor ?? AppColors.kWhiteColor,
    titleSpacing: titleSpacing ?? 0,
    title: (title != null)
        ? Text(
            title,
            style: textStyle ??
                AppTextStyle.bodySemiBold17.copyWith(
                    fontStyle: FontStyle.italic, color: AppColors.kBlackColor),
          )
        : null,
    automaticallyImplyLeading: false,
    // leadingWidth: leadingWidget != null ? 120.w : 63.w,
    leading: showBackButton
        ? Padding(
            padding: showButtonPadding ??
                EdgeInsets.only(
                  left: 0.w,
                ),
            child: IconButton(
              onPressed: onLeadingTap ??
                  () {
                    Get.back();
                  },
              splashRadius: 24.h,
              icon: SvgPicture.asset(
                AppAssets.backButtonSvg,
                //color: AppColors.primary,
                height: 21.h,
                width: 12.h,
              ),
            ),
          )
        : leadingWidget,
    actions: actions,
    bottom: bottom,
  );
}
