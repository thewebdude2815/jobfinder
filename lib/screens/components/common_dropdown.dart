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
  Color? textColor;
  bool? showBorder;
  CommonDropdownButton(
      {Key? key,
      required this.items,
      required this.onSaved,
      this.hintText,
      this.value,
      this.label,
      required this.onChange,
      this.textColor,
      this.showBorder,
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
                  ? widget.textColor ?? AppColors.kWhiteColor
                  : AppColors.kGrayColor10),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(
                top: 12.h,
                bottom: 12.h,
                left: 0,
                right: widget.isFilled != null ? 0.w : 12.w),
            fillColor: widget.isFilled != null
                ? Colors.transparent
                : AppColors.kGrayColor4,
            filled: true,
            border: widget.showBorder == true
                ? widget.isFilled != null
                    ? UnderlineInputBorder(
                        borderSide: BorderSide(
                            width: 3.h,
                            color: widget.textColor ?? AppColors.kWhiteColor))
                    : OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.r),
                        borderSide: const BorderSide(
                          color: AppColors.kGrayColor4,
                        ),
                      )
                : const UnderlineInputBorder(borderSide: BorderSide.none),
            enabledBorder: widget.showBorder == true
                ? widget.isFilled != null
                    ? UnderlineInputBorder(
                        borderSide: BorderSide(
                        color: widget.textColor ?? AppColors.kWhiteColor,
                        width: 3.h,
                      ))
                    : OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.r),
                        borderSide: const BorderSide(
                          color: AppColors.kGrayColor4,
                        ),
                      )
                : const UnderlineInputBorder(borderSide: BorderSide.none),
          ),
          isExpanded: false,
          hint: Text(
            widget.hintText ?? "",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: widget.isFilled != null
                ? AppTextStyle.bodyBold24.copyWith(
                    color: widget.textColor ?? AppColors.kWhiteColor,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700)
                : AppTextStyle.bodyNormal17
                    .copyWith(color: widget.textColor ?? AppColors.kGrayColor),
          ),
          items: widget.items
              .map(
                (item) => DropdownMenuItem<String>(
                  value: item,
                  child: Text(
                    item,
                    style: widget.isFilled != null
                        ? AppTextStyle.bodyBold24.copyWith(
                            color: widget.textColor ?? AppColors.kWhiteColor,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w700)
                        : AppTextStyle.bodyNormal17.copyWith(
                            color: widget.textColor ?? AppColors.kBlackColor),
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
