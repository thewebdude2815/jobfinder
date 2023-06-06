import 'dart:developer';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';

class CommonDropdownButton extends StatefulWidget {
  final List items;
  void Function(dynamic) onSaved;
  String? hintText;
  String? value;
  void Function(dynamic) onChange;
  String? label;
  bool? isFilled;
  CommonDropdownButton(
      {Key? key,
      required this.items,
      required this.onSaved,
      this.hintText,
      this.value,
      this.label,
      required this.onChange,
      this.isFilled})
      : super(key: key);

  @override
  State<CommonDropdownButton> createState() => _CommonDropdownButtonState();
}

class _CommonDropdownButtonState extends State<CommonDropdownButton> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        widget.label != null
            ? Text(
                widget.label!,
                style: AppTextStyle.bodySemiBold17
                    .copyWith(color: AppColors.kBlackColor),
              )
            : const SizedBox(),
        widget.label != null
            ? SizedBox(
                height: 8.h,
              )
            : SizedBox(
                height: 0.h,
              ),
        DropdownButtonFormField2(
          iconStyleData: IconStyleData(
              iconEnabledColor: widget.isFilled != null
                  ? AppColors.kWhiteColor
                  : AppColors.kGrayColor10),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(
                top: 12.h,
                bottom: 12.h,
                left: 0.w,
                right: widget.isFilled != null ? 0.w : 12.w),
            fillColor: widget.isFilled != null
                ? Colors.transparent
                : AppColors.kGrayColor4,
            filled: true,
            border: widget.isFilled != null
                ? UnderlineInputBorder(
                    borderSide:
                        BorderSide(width: 3.h, color: AppColors.kWhiteColor))
                : OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                    borderSide: const BorderSide(
                      color: AppColors.kGrayColor4,
                    ),
                  ),
            enabledBorder: widget.isFilled != null
                ? UnderlineInputBorder(
                    borderSide: BorderSide(
                    color: AppColors.kWhiteColor,
                    width: 3.h,
                  ))
                : OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                    borderSide: const BorderSide(
                      color: AppColors.kGrayColor4,
                    ),
                  ),
          ),
          isExpanded: true,
          hint: Text(
            widget.hintText ?? "",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: widget.isFilled != null
                ? AppTextStyle.bodyBold24.copyWith(
                    color: AppColors.kWhiteColor,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700)
                : AppTextStyle.bodyNormal17
                    .copyWith(color: AppColors.kGrayColor),
          ),
          items: widget.items
              .map(
                (item) => DropdownMenuItem<String>(
                  value: item,
                  child: Text(
                    item,
                    style: widget.isFilled != null
                        ? AppTextStyle.bodyBold24.copyWith(
                            color: AppColors.kWhiteColor,
                            fontSize: 28.sp,
                            fontWeight: FontWeight.w700)
                        : AppTextStyle.bodyNormal17
                            .copyWith(color: AppColors.kBlackColor),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              )
              .toList(),
          value: widget.value,
          onSaved: widget.onSaved,
          onChanged: widget.onChange,
        ),
      ],
    );
  }
}
