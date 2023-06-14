import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/screens/components/common_appbar.dart';
import 'package:jobfinder/screens/components/users_widget.dart';

class BlockedUserSettings extends StatefulWidget {
  const BlockedUserSettings({super.key});

  @override
  State<BlockedUserSettings> createState() => _BlockedUserSettingsState();
}

class _BlockedUserSettingsState extends State<BlockedUserSettings> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhiteColor,
      appBar: CustomAppBar(
          showBackButton: true,
          centerTitle: true,
          title: 'Blocked User Settings'),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 12.h,
              ),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: 8,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return UsersWidget(
                      followers: '104',
                      name: 'borage',
                      posts: '30',
                      isBlocked: true,
                      onTap: () {
                        setState(() {
                          isSelected = true;
                        });
                      },
                      isSelected: isSelected,
                    );
                  }),
              SizedBox(
                height: 12.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
