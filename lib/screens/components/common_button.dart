import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobfinder/helpers/app_assets.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';

class CommonButton extends StatelessWidget {
  final String text;
  double? height;
  double? width;
  Color? fillColor;
  final bool isItalicText;
  final void Function() onTap;
  final bool isFilled;
  final bool hasIcon;
  String? icon;
  Color? iconColor;
  TextStyle? textStyle;
  CommonButton(
      {super.key,
      this.height,
      required this.onTap,
      required this.text,
      this.fillColor,
      required this.isItalicText,
      required this.isFilled,
      required this.hasIcon,
      this.iconColor,
      this.icon,
      this.textStyle,
      this.width});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height ?? 50.h,
        width: width ?? 311.w,
        decoration: BoxDecoration(
            color: fillColor ?? AppColors.kMainColor,
            borderRadius: BorderRadius.circular(8.r),
            border: isFilled
                ? Border.all(width: 0, color: Colors.transparent)
                : Border.all(color: AppColors.kMainColor, width: 1)),
        child: Center(
          child: hasIcon
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      icon ?? AppAssets.fbIcon,
                      color: iconColor ?? AppColors.kBlackColor,
                    ),
                    SizedBox(
                      width: 25.w,
                    ),
                    Text(
                      text,
                      style: AppTextStyle.bodySemiBold17.copyWith(
                        fontStyle:
                            isItalicText ? FontStyle.italic : FontStyle.normal,
                        color: isFilled
                            ? AppColors.kWhiteColor
                            : AppColors.kBlackColor,
                      ),
                    )
                  ],
                )
              : Text(
                  text,
                  style: textStyle ??
                      AppTextStyle.bodySemiBold17.copyWith(
                          fontStyle: isItalicText
                              ? FontStyle.italic
                              : FontStyle.normal,
                          color: isFilled
                              ? AppColors.kWhiteColor
                              : AppColors.kBlackColor),
                ),
        ),
      ),
    );
  }
}
