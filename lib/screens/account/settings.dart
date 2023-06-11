import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:jobfinder/helpers/app_assets.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';
import 'package:jobfinder/helpers/routes.dart';
import 'package:jobfinder/screens/components/common_appbar.dart';
import 'package:jobfinder/screens/components/settings_option_widget.dart';
import 'package:jobfinder/screens/components/settings_switch_widgets.dart';
import 'package:jobfinder/screens/components/settings_text_row_widget.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  List<Widget> items = const [
    SettingsSwitchWidgets(text: 'Newsletter'),
    SettingsSwitchWidgets(text: 'Text Messages'),
    SettingsSwitchWidgets(text: 'Phone Calls'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhiteColor,
      appBar: CustomAppBar(showBackButton: true),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(left: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 16.h,
              ),
              Text(
                'Settings',
                style: AppTextStyle.bodyBold34
                    .copyWith(color: AppColors.kBlackColor),
              ),
              SizedBox(
                height: 18.h,
              ),
              Text(
                'Account',
                style: AppTextStyle.bodyNormal17.copyWith(
                    fontWeight: FontWeight.w700, color: AppColors.kBlackColor),
              ),
              SizedBox(
                height: 18.h,
              ),
              ListView(
                shrinkWrap: true,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.changePasswordRoute);
                    },
                    child: const SettingsOptionWidget(
                      icon: AppAssets.lockIcon,
                      text: 'Change Password',
                    ),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.notificationsSettingsRoute);
                    },
                    child: const SettingsOptionWidget(
                      icon: AppAssets.bellIcon,
                      text: 'Notifications',
                    ),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  const SettingsOptionWidget(
                    icon: AppAssets.handIcon,
                    text: 'Privacy Settings',
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.blockedUserSettingsRoute);
                    },
                    child: const SettingsOptionWidget(
                      icon: AppAssets.handIcon,
                      text: 'Blocked User Settings',
                    ),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  const SettingsOptionWidget(
                    icon: AppAssets.logoutIcon,
                    text: 'Sign Out',
                  ),
                ],
              ),
              SizedBox(
                height: 28.h,
              ),
              Text(
                'More Options',
                style: AppTextStyle.bodySemiBold17.copyWith(
                    fontWeight: FontWeight.w700, color: AppColors.kBlackColor),
              ),
              SizedBox(
                height: 28.h,
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return items[index];
                },
              ),
              const SettingsTextRowWidget(
                heading: 'Currency',
                subHeading: '\$-USD',
              ),
              const SettingsTextRowWidget(
                heading: 'Languages',
                subHeading: 'English',
              ),
              const SettingsTextRowWidget(
                heading: 'Linked Accounts',
                subHeading: 'Facebook, Google',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
