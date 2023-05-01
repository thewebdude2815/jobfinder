import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';

class CommonTextFieldNew extends StatefulWidget {
  CommonTextFieldNew({
    Key? key,
    this.labelText,
    this.initialText,
    this.prefixSvg,
    this.prefixPadding,
    this.prefixOnTap,
    this.prefixHeight,
    this.prefixWidth,
    this.suffixSvg,
    this.suffixPadding,
    this.suffixOnTap,
    this.suffixHeight,
    this.suffixWidth,
    this.hintText,
    this.prefixText,
    this.inputFormatters,
    required this.onSaved,
    required this.validator,
    this.onTap,
    this.readOnly,
    this.obscure,
    this.enabled,
    this.controller,
    this.autoValidateMode,
    this.onChanged,
    this.maxLines,
    this.disableBorder,
    this.fillColor,
    this.hintStyle,
    required this.filled,
    this.textStyle,
    this.cursorColor,
    this.autoFocused,
    this.onFieldSubmit,
    this.prefixWidget,
    this.hintDirection,
    this.textDirection,
    this.focusNode,
    this.capitalization,
    this.inputType,
    this.isDense,
    this.contentPadding,
    this.prefixIconColor,
    this.suffixIconColor,
    this.borderRadius,
    this.textInputAction,
  }) : super(key: key);
  final String? labelText;
  final String? initialText;
  final String? suffixSvg, prefixSvg;
  final Widget? prefixWidget;
  final String? hintText;
  final String? prefixText;
  final int? maxLines;
  TextDirection? hintDirection;
  TextInputAction? textInputAction;

  final TextStyle? textStyle, hintStyle;
  final List<TextInputFormatter>? inputFormatters;
  bool filled;
  EdgeInsetsGeometry? contentPadding;
  bool? readOnly, obscure, enabled, disableBorder, autoFocused, isDense;
  FormFieldValidator<String>? validator;
  FormFieldSetter<String>? onSaved, onFieldSubmit;
  VoidCallback? onTap;
  final VoidCallback? suffixOnTap, prefixOnTap;
  final EdgeInsets? suffixPadding, prefixPadding;
  final double? suffixHeight, suffixWidth, prefixHeight, prefixWidth;
  TextEditingController? controller;
  AutovalidateMode? autoValidateMode;
  void Function(String? text)? onChanged;
  final Color? fillColor, cursorColor;
  final TextDirection? textDirection;
  final FocusNode? focusNode;
  final TextCapitalization? capitalization;
  final TextInputType? inputType;
  final Color? prefixIconColor, suffixIconColor;
  final double? borderRadius;

  @override
  State<CommonTextFieldNew> createState() => _CommonTextFieldNewState();
}

class _CommonTextFieldNewState extends State<CommonTextFieldNew> {
  bool hidePassword = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: widget.textInputAction,
      textDirection: widget.textDirection,
      maxLines: widget.obscure ?? false ? 1 : widget.maxLines ?? 1,
      enabled: widget.enabled,
      initialValue: widget.initialText,
      controller: widget.controller,
      // textDirection: TextDirection.rtl,
      // style: widget.textStyle ??
      //     AppTextStyle.componentTextStyle.copyWith(
      //       color: AppColors.white,
      //       height: 1.6,
      //     ),
      obscureText: (widget.obscure ?? false) ? hidePassword : false,
      onChanged: widget.onChanged,
      cursorColor: widget.cursorColor ?? AppColors.kBlackColor,
      autovalidateMode: widget.autoValidateMode,
      inputFormatters: widget.inputFormatters,
      autofocus: widget.autoFocused ?? false,
      focusNode: widget.focusNode,
      textCapitalization: widget.capitalization ?? TextCapitalization.sentences,
      keyboardType: widget.inputType,
      style: widget.textStyle ??
          AppTextStyle.bodyNormal17.copyWith(color: AppColors.kBlackColor),
      decoration: InputDecoration(
        isDense: widget.isDense ?? true,
        fillColor: widget.fillColor ?? AppColors.kGrayColor4,
        filled: widget.filled,
        focusedBorder: widget.disableBorder == true
            ? InputBorder.none
            : OutlineInputBorder(
                borderSide: const BorderSide(
                  color: AppColors.kGrayColor4,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(widget.borderRadius ?? 8.r),
              ),
        hintStyle: widget.hintStyle ??
            AppTextStyle.bodyNormal17.copyWith(color: AppColors.kGrayColor),
        hintTextDirection: widget.hintDirection,
        contentPadding: widget.contentPadding ?? EdgeInsets.zero,
        enabledBorder: widget.disableBorder == true
            ? InputBorder.none
            : OutlineInputBorder(
                borderSide: const BorderSide(
                  color: AppColors.kGrayColor4,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(widget.borderRadius ?? 8.r),
              ),
        border: widget.disableBorder == true
            ? InputBorder.none
            : OutlineInputBorder(
                borderSide: const BorderSide(
                  color: AppColors.kGrayColor4,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(widget.borderRadius ?? 8.r),
              ),
        errorBorder: widget.disableBorder == true
            ? InputBorder.none
            : OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.borderRadius ?? 8.r),
                borderSide: const BorderSide(
                  color: AppColors.kGrayColor4,
                  width: 1,
                ),
              ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColors.kGrayColor4,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(widget.borderRadius ?? 8.r),
        ),
        // errorStyle: AppTextStyle.fieldErrorTextStyle,
        alignLabelWithHint: true,
        labelText: widget.labelText,
        hintText: widget.hintText,
        prefixIcon: widget.prefixSvg != null
            ? Padding(
                padding: widget.prefixPadding ?? EdgeInsets.zero,
                // EdgeInsets.only(
                //   top: 6.h,
                //   bottom: 6.h,
                //   left: 6.w,
                // ),
                child: IconButton(
                  onPressed: widget.prefixOnTap,
                  // splashRadius: 20.h,
                  icon: SvgPicture.asset(
                    widget.prefixSvg!,
                    height: widget.prefixHeight != null
                        ? widget.prefixHeight!.h
                        : 14.h,
                    width: widget.prefixWidth != null
                        ? widget.prefixWidth!.h
                        : 14.h,
                    color: widget.prefixIconColor ?? AppColors.kGrayColor,
                  ),
                ),
              )
            : null,
        // suffixIcon: widget.obscure ?? false
        //     ? Padding(
        //         padding: EdgeInsets.only(right: 4.w),
        //         child: IconButton(
        //           onPressed: () {
        //             setState(() {
        //               if (hidePassword) {
        //                 hidePassword = false;
        //               } else {
        //                 hidePassword = true;
        //               }
        //             });
        //           },
        //           splashRadius: 20.h,
        //           icon: SvgPicture.asset(
        //             hidePassword ? AppAssets.eyeSlashSvg : AppAssets.eyeSvg,
        //             height: 20.h,
        //             width: 20.w,
        //             color: AppColors.secondary,
        //           ),
        //           color: AppColors.white,
        //         ),
        //       )
        //     : widget.suffixSvg != null
        //         ? Padding(
        //             padding:
        //                 widget.suffixPadding ?? EdgeInsets.only(right: 4.w),
        //             child: IconButton(
        //               onPressed: widget.suffixOnTap,
        //               splashRadius: 20.h,
        //               icon: SvgPicture.asset(
        //                 widget.suffixSvg!,
        //                 height: widget.suffixHeight != null
        //                     ? widget.suffixHeight!.h
        //                     : 24.h,
        //                 width: widget.suffixWidth != null
        //                     ? widget.suffixWidth!.h
        //                     : 24.w,
        //                 color: widget.suffixIconColor ?? AppColors.white,
        //               ),
        //               color: AppColors.white,
        //             ),
        //           )
        //         : null,
      ),
      readOnly: widget.readOnly ?? false,
      onSaved: widget.onSaved,
      validator: widget.validator,
      onTap: widget.onTap,
      onFieldSubmitted: widget.onFieldSubmit,
    );
  }
}
