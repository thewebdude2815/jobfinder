import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/routes.dart';
import 'package:jobfinder/screens/components/common_appbar.dart';
import 'package:jobfinder/screens/components/common_button.dart';
import 'package:jobfinder/screens/components/common_textfield_with_label.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhiteColor,
      appBar: CustomAppBar(
          title: 'Change Password', centerTitle: true, showBackButton: true),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            CommonTextFieldWithLabel(
              onSaved: (e) {},
              validator: (e) {
                return null;
              },
              filled: true,
              label: 'Current Password',
              hintText: 'Write Your Current Password',
            ),
            SizedBox(
              height: 8.h,
            ),
            CommonTextFieldWithLabel(
              onSaved: (e) {},
              validator: (e) {
                return null;
              },
              filled: true,
              label: 'New Password',
              hintText: 'Write Your New Password',
            ),
            SizedBox(
              height: 8.h,
            ),
            CommonTextFieldWithLabel(
              onSaved: (e) {},
              validator: (e) {
                return null;
              },
              filled: true,
              label: 'New Password',
              hintText: 'Rewrite Your Current Password',
            ),
            const Spacer(),
            CommonButton(
                onTap: () {
                  Get.toNamed(Routes.changePasswordSuccessRoute);
                },
                text: 'Confirm',
                isItalicText: false,
                isFilled: true,
                hasIcon: false),
            const Spacer(),
          ],
        ),
      )),
    );
  }
}
