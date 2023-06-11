import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobfinder/helpers/app_assets.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';
import 'package:jobfinder/screens/components/common_appbar.dart';
import 'package:jobfinder/screens/components/common_button.dart';
import 'package:jobfinder/screens/components/common_textfield.dart';

class ComposeDailyLife extends StatefulWidget {
  const ComposeDailyLife({super.key});

  @override
  State<ComposeDailyLife> createState() => _ComposeDailyLifeState();
}

class _ComposeDailyLifeState extends State<ComposeDailyLife> {
  List<String> catList = [
    'Do it together',
    'Ask anything',
    'Restaurant',
    'Lost Item',
    'Do it together'
  ];
  String currentSelected = '';
  bool isPosted = false;
  bool iscancled = false;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (isPosted == true) {
          return true;
        } else {
          cupertinoBottomSheetShow(context);
          return false;
        }
      },
      child: Scaffold(
        backgroundColor: AppColors.kWhiteColor,
        appBar: CustomAppBar(
            onLeadingTap: () {
              isPosted
                  ? Navigator.pop(context)
                  : cupertinoBottomSheetShow(context);
            },
            showBackButton: true,
            actions: [
              SvgPicture.asset(
                AppAssets.searchIcon,
                height: 20.h,
              ),
              SizedBox(
                width: 16.w,
              ),
              SvgPicture.asset(
                AppAssets.bellIcon,
                height: 20.h,
              ),
              SizedBox(
                width: 16.w,
              ),
            ]),
        body: SafeArea(
          child: isPosted
              ////////////////////////////////////////////////////////////////////////////////
              ///////////////////////////////////////////////////////////////////////////////////
              ///////////////////////////////////////////////////////////////////////////////////
              ///////////////////////////////////////////////////////////////////////////////////
              ///////////////////////////////////////////////////////////////////////////////////
              ? SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 8.w),
                        height: 50.h,
                        child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: catList.length,
                            itemBuilder: (_, index) {
                              return ComposeCategoryChip(
                                  text: catList[index],
                                  currentSelected: currentSelected,
                                  index: index,
                                  onTap: () {
                                    setState(() {
                                      currentSelected = catList[index];
                                    });
                                  });
                            }),
                      ),
                      const Divider(
                        color: AppColors.kGrayColor3,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 20.h,
                            ),
                            Row(
                              children: [
                                Container(),
                                const Spacer(),
                                SvgPicture.asset(
                                  AppAssets.location2Icon,
                                  height: 24.h,
                                ),
                                SizedBox(
                                  width: 20.w,
                                ),
                                SvgPicture.asset(
                                  AppAssets.video2Icon,
                                  height: 24.h,
                                ),
                                SizedBox(
                                  width: 20.w,
                                ),
                                SvgPicture.asset(
                                  AppAssets.imageIcon,
                                  height: 24.h,
                                ),
                                SizedBox(
                                  width: 20.w,
                                ),
                                SvgPicture.asset(
                                  AppAssets.zoomIcon,
                                  height: 24.h,
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                              ],
                            ),
                            // CommonTextFieldNew(
                            //     onSaved: (e) {},
                            //     validator: (e) {
                            //       return null;
                            //     },
                            //     disableBorder: true,
                            //     contentPadding:
                            //         EdgeInsets.symmetric(vertical: 30.h),
                            //     maxLines: 3,
                            //     hintText: 'Enter Text Here',
                            //     filled: false),
                            SizedBox(
                              height: 20.h,
                            ),
                            Text(
                                "here is my faborite rest come visit together"),
                            SizedBox(
                              height: 20.h,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12.r),
                              child: Image.asset(
                                AppAssets.office,
                                height: 272.h,
                                width: 319.w,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Text("come visit together"),
                            SizedBox(
                              height: 12.h,
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 8.w),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.r),
                                  border:
                                      Border.all(color: AppColors.kGrayColor3)),
                              child: Row(children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(12.r),
                                    bottomLeft: Radius.circular(12.r),
                                  ),
                                  child: Image.asset(
                                    AppAssets.office,
                                    height: 105.13.h,
                                    width: 111.w,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(
                                  width: 20.w,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'JINIE RESTAURANT',
                                      style: AppTextStyle.bodyNormal15.copyWith(
                                          color: AppColors.kBlackColor),
                                    ),
                                    SizedBox(
                                      height: 12.h,
                                    ),
                                    Text(
                                      'Seoul, Korea, ZIP 39390',
                                      style: AppTextStyle.bodyNormal15.copyWith(
                                          color: AppColors.kBlackColor),
                                    ),
                                  ],
                                ),
                              ]),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ////////////////////////////////////////////////////////////////////////////////
              ///////////////////////////////////////////////////////////////////////////////////
              ///////////////////////////////////////////////////////////////////////////////////
              ///////////////////////////////////////////////////////////////////////////////////
              ///////////////////////////////////////////////////////////////////////////////////
              ///////////////////////////////////////////////////////////////////////////////////
              ///////////////////////////////////////////////////////////////////////////////////
              ///////////////////////////////////////////////////////////////////////////////////
              ///////////////////////////////////////////////////////////////////////////////////
              ///////////////////////////////////////////////////////////////////////////////////
              : SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 8.w),
                        height: 50.h,
                        child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: catList.length,
                            itemBuilder: (_, index) {
                              return ComposeCategoryChip(
                                  text: catList[index],
                                  currentSelected: currentSelected,
                                  index: index,
                                  onTap: () {
                                    setState(() {
                                      currentSelected = catList[index];
                                    });
                                  });
                            }),
                      ),
                      const Divider(
                        color: AppColors.kGrayColor3,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20.h,
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 6.h, horizontal: 10.w),
                                  decoration: BoxDecoration(
                                      color: AppColors.kRedColor,
                                      borderRadius:
                                          BorderRadius.circular(12.r)),
                                  child: Text(
                                    'Restaurant',
                                    style: AppTextStyle.bodyNormal10
                                        .copyWith(color: AppColors.kWhiteColor),
                                  ),
                                ),
                                const Spacer(),
                                SvgPicture.asset(
                                  AppAssets.location2Icon,
                                  height: 24.h,
                                ),
                                SizedBox(
                                  width: 20.w,
                                ),
                                SvgPicture.asset(
                                  AppAssets.video2Icon,
                                  height: 24.h,
                                ),
                                SizedBox(
                                  width: 20.w,
                                ),
                                SvgPicture.asset(
                                  AppAssets.imageIcon,
                                  height: 24.h,
                                ),
                                SizedBox(
                                  width: 20.w,
                                ),
                                SvgPicture.asset(
                                  AppAssets.zoomIcon,
                                  height: 24.h,
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                              ],
                            ),
                            CommonTextFieldNew(
                                onSaved: (e) {},
                                validator: (e) {
                                  return null;
                                },
                                disableBorder: true,
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 30.h),
                                maxLines: 3,
                                hintText: 'Enter Text Here',
                                filled: false),
                            SizedBox(
                              height: 20.h,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12.r),
                              child: Image.asset(
                                AppAssets.office,
                                height: 272.h,
                                width: 319.w,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              height: 12.h,
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 8.w),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.r),
                                  border:
                                      Border.all(color: AppColors.kGrayColor3)),
                              child: Row(children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(12.r),
                                    bottomLeft: Radius.circular(12.r),
                                  ),
                                  child: Image.asset(
                                    AppAssets.office,
                                    height: 105.13.h,
                                    width: 111.w,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(
                                  width: 20.w,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'JINIE RESTAURANT',
                                      style: AppTextStyle.bodyNormal15.copyWith(
                                          color: AppColors.kBlackColor),
                                    ),
                                    SizedBox(
                                      height: 12.h,
                                    ),
                                    Text(
                                      'Seoul, Korea, ZIP 39390',
                                      style: AppTextStyle.bodyNormal15.copyWith(
                                          color: AppColors.kBlackColor),
                                    ),
                                  ],
                                ),
                              ]),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
        ),
        bottomNavigationBar: isPosted
            ? const SizedBox()
            : Padding(
                padding: EdgeInsets.all(16.w),
                child: CommonButton(
                    onTap: () {
                      setState(() {
                        isPosted = true;
                      });
                    },
                    text: 'Post',
                    isItalicText: false,
                    isFilled: true,
                    hasIcon: false),
              ),
      ),
    );
  }
}

class ComposeCategoryChip extends StatelessWidget {
  final String text, currentSelected;
  final void Function() onTap;
  final int index;
  const ComposeCategoryChip({
    required this.currentSelected,
    required this.text,
    required this.onTap,
    required this.index,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(
            right: 12.w, top: 8.h, bottom: 8.h, left: index == 0 ? 12.w : 0.w),
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18.r),
            color: text == currentSelected
                ? AppColors.kRedColor
                : AppColors.kWhiteColor,
            boxShadow: [
              BoxShadow(
                  color: AppColors.kBlackColor.withOpacity(0.22),
                  spreadRadius: 1,
                  blurRadius: 4)
            ]),
        child: Center(
          child: Text(
            text,
            style: AppTextStyle.bodyNormal10.copyWith(
                color: text == currentSelected
                    ? AppColors.kWhiteColor
                    : AppColors.kBlackColor),
          ),
        ),
      ),
    );
  }
}

cupertinoBottomSheetShow(context) {
  showCupertinoModalPopup(
      barrierColor: Colors.black.withOpacity(0.7),
      context: context,
      builder: (context) {
        return CupertinoActionSheet(
          message: const Text(
              "Are you sure you want to cancel your writing ?\nif you select Cancel Write, the written article is not saved.                            "),
          actions: [
            CupertinoActionSheetAction(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  "Cancel",
                  style: TextStyle(color: Colors.red),
                )),
            CupertinoActionSheetAction(
              onPressed: () {
                Navigator.pop(context, true);
              },
              child: const Text("Post"),
            ),
          ],
        );
      });
}
