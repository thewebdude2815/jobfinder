import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/screens/components/common_appbar.dart';
import 'package:jobfinder/screens/components/users_widget.dart';

class Followings extends StatelessWidget {
  const Followings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhiteColor,
      appBar: CustomAppBar(
          showBackButton: true, centerTitle: true, title: 'Following'),
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
                      onTap: () {},
                      isSelected: false,
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
