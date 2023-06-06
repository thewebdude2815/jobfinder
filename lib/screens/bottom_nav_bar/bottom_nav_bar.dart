// ignore_for_file: file_names, avoid_print
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobfinder/helpers/app_assets.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';
import 'package:jobfinder/screens/account/account.dart';
import 'package:jobfinder/screens/account/posts.dart';
import 'package:jobfinder/screens/browse/browse.dart';
import 'package:jobfinder/screens/browse/browse2.dart';
import 'package:jobfinder/screens/jobs/jobs.dart';
import 'package:jobfinder/screens/messages/messages.dart';

class MainBottomNavBarScreen extends StatefulWidget {
  const MainBottomNavBarScreen({Key? key}) : super(key: key);

  @override
  State<MainBottomNavBarScreen> createState() => _MainBottomNavBarScreenState();
}

class _MainBottomNavBarScreenState extends State<MainBottomNavBarScreen> {
  int myIndex = 0;
  List<Widget> screens = [
    const Browse(),
    const Browse2(),
    const Posts(),
    const Messages(),
    const Account(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[myIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              myIndex = value;
              print(myIndex);
            });
          },
          showSelectedLabels: true,
          showUnselectedLabels: true,
          currentIndex: myIndex,
          backgroundColor: AppColors.kWhiteColor,
          elevation: 15,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppColors.kMainColor,
          unselectedItemColor: AppColors.kGrayColor6,
          selectedLabelStyle:
              AppTextStyle.bodyNormal10.copyWith(color: AppColors.kMainColor),
          unselectedLabelStyle:
              AppTextStyle.bodyNormal10.copyWith(color: AppColors.kGrayColor),
          items: [
            BottomNavigationBarItem(
              label: 'Browse',
              icon: Padding(
                padding: EdgeInsets.only(bottom: 4.h),
                child: SvgPicture.asset(
                  AppAssets.homeIcon,
                  color: myIndex == 0
                      ? AppColors.kMainColor
                      : AppColors.kGrayColor6,
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: 'Jobs',
              icon: Padding(
                padding: EdgeInsets.only(bottom: 4.h),
                child: SvgPicture.asset(AppAssets.caseIcon,
                    color: myIndex == 1
                        ? AppColors.kMainColor
                        : AppColors.kGrayColor6),
              ),
            ),
            BottomNavigationBarItem(
              label: 'Daily Life',
              icon: Padding(
                padding: EdgeInsets.only(bottom: 4.h),
                child: SvgPicture.asset(AppAssets.dailyLifeIcon,
                    color: myIndex == 2
                        ? AppColors.kMainColor
                        : AppColors.kGrayColor6),
              ),
            ),
            BottomNavigationBarItem(
              label: 'Message',
              icon: Padding(
                padding: EdgeInsets.only(bottom: 4.h),
                child: SvgPicture.asset(AppAssets.chatIcon,
                    color: myIndex == 3
                        ? AppColors.kMainColor
                        : AppColors.kGrayColor6),
              ),
            ),
            BottomNavigationBarItem(
              label: 'Account',
              icon: Padding(
                padding: EdgeInsets.only(bottom: 4.h),
                child: SvgPicture.asset(AppAssets.profileIcon,
                    color: myIndex == 4
                        ? AppColors.kMainColor
                        : AppColors.kGrayColor6),
              ),
            ),
          ]),
    );
  }
}
