import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/screens/components/common_appbar.dart';
import 'package:jobfinder/screens/components/settings_switch_widgets.dart';

class NotificationsSettings extends StatefulWidget {
  const NotificationsSettings({super.key});

  @override
  State<NotificationsSettings> createState() => _NotificationsSettingsState();
}

class _NotificationsSettingsState extends State<NotificationsSettings> {
  List<Widget> items = const [
    SettingsSwitchWidgets(text: 'Follow Notifications'),
    SettingsSwitchWidgets(text: 'Mention Notice'),
    SettingsSwitchWidgets(text: 'Comment Notifications'),
    SettingsSwitchWidgets(text: 'Like Notifications'),
    SettingsSwitchWidgets(text: 'Scrap Notifications'),
    SettingsSwitchWidgets(text: 'Follow New Post Notifications'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhiteColor,
      appBar: CustomAppBar(
          title: 'Notifications Settings',
          centerTitle: true,
          showBackButton: true),
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: const SettingsSwitchWidgets(text: 'All Notifications'),
          ),
          Container(
            height: 8.h,
            color: AppColors.kGrayColor8,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: items.length,
              itemBuilder: (context, index) {
                return items[index];
              },
            ),
          ),
        ],
      )),
    );
  }
}
