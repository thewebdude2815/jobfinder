import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';

class SettingsSwitchWidgets extends StatefulWidget {
  final String text;
  const SettingsSwitchWidgets({super.key, required this.text});

  @override
  State<SettingsSwitchWidgets> createState() => _SettingsSwitchWidgetsState();
}

class _SettingsSwitchWidgetsState extends State<SettingsSwitchWidgets> {
  bool _lights = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 6.5.h, bottom: 6.5.h, right: 16.w),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: AppColors.kGrayColor4),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.text,
            style: AppTextStyle.bodyNormal17
                .copyWith(color: AppColors.kBlackColor),
          ),
          CupertinoSwitch(
            value: _lights,
            onChanged: (bool value) {
              setState(() {
                _lights = value;
              });
            },
          )
        ],
      ),
    );
  }
}
