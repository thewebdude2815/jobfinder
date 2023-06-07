// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobfinder/helpers/app_assets.dart';
import 'package:jobfinder/helpers/app_colors.dart';
import 'package:jobfinder/helpers/app_text_style.dart';
import 'package:jobfinder/helpers/routes.dart';
import 'package:jobfinder/screens/components/comment_box_posts.dart';
import 'package:jobfinder/screens/components/common_appbar.dart';
import 'package:jobfinder/screens/components/common_dropdown.dart';
import 'package:jobfinder/screens/components/common_textfield.dart';
import 'package:share_plus/share_plus.dart';

class Posts extends StatefulWidget {
  const Posts({super.key});

  @override
  State<Posts> createState() => _PostsState();
}

class _PostsState extends State<Posts> {
  String? dropdownvalue;
  List items = ["Report", "Block"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhiteColor,
      appBar: CustomAppBar(showBackButton: true),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 8.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 20.r,
                          backgroundColor: AppColors.kBlueColor,
                        ),
                        SizedBox(
                          width: 12.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'vardoli',
                              style: AppTextStyle.bodyNormal15.copyWith(
                                color: AppColors.kBlackColor,
                              ),
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            Text(
                              '3 days ago',
                              style: AppTextStyle.bodyNormal15.copyWith(
                                  color: const Color(
                                    0xFF9D9D9D,
                                  ),
                                  fontSize: 12.sp),
                            ),
                          ],
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {
                            Get.toNamed(Routes.searchUserRoute);
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 4.h, horizontal: 8.w),
                            decoration: BoxDecoration(
                                color: AppColors.kBlueColor,
                                borderRadius: BorderRadius.circular(16.r)),
                            child: Text(
                              'Follow',
                              style: AppTextStyle.bodyNormal13
                                  .copyWith(color: AppColors.kWhiteColor),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 8.w,
                        ),
                        DropdownButtonHideUnderline(
                          child: DropdownButton(
                            onTap: () {
                              if (dropdownvalue == "Block") {
                                showDialog(
                                    context: context,
                                    builder: (_) {
                                      return CupertinoAlertDialog(
                                        title: Column(
                                          children: <Widget>[
                                            Text("To block"),
                                          ],
                                        ),
                                        content: new Text(
                                            "Are you sure you want to block Nickname?" +
                                                "Now your nickname is on your profile, VORA," +
                                                "Couldn't find any activity history, including posts" +
                                                "Also, the fact that you have been blocked will not be notified to your nickname."),
                                        actions: <Widget>[
                                          CupertinoDialogAction(
                                            child: Text(
                                              "To Block",
                                              style: TextStyle(
                                                color: Colors.red,
                                              ),
                                            ),
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                          ),
                                          CupertinoDialogAction(
                                            child: Text("Cancel"),
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                          ),
                                        ],
                                      );
                                    });
                              } else if (dropdownvalue == "Report") {
                                showDialog(
                                    context: context,
                                    builder: (_) {
                                      return AlertDialog(content:
                                          StatefulBuilder(builder:
                                              (BuildContext context,
                                                  StateSetter setState) {
                                        return Container(
                                          height: 240.h,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(),
                                                  Text(
                                                    "Reporting",
                                                    style: AppTextStyle
                                                        .bodyBold24
                                                        .copyWith(
                                                            color: AppColors
                                                                .kBlackColor,
                                                            fontSize: 18.sp),
                                                  ),
                                                  InkWell(
                                                      onTap: () {
                                                        Navigator.pop(context);
                                                      },
                                                      child: Icon(Icons.close,
                                                          size: 22.0)),
                                                ],
                                              ),
                                              SizedBox(height: 20.h),
                                              Text(
                                                "Reason for reporting",
                                                style: AppTextStyle.bodyNormal13
                                                    .copyWith(
                                                  color: AppColors.kBlackColor,
                                                ),
                                              ),
                                              SizedBox(height: 8.h),
                                              GestureDetector(
                                                onTap: () {
                                                  cupertinoBottomSheetShowForDialog(
                                                      context);
                                                },
                                                child: Container(
                                                  height: 40.0.h,
                                                  width: double.infinity,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.r),
                                                    border: Border.all(
                                                        color: AppColors
                                                            .kGrayColor,
                                                        width: 0.0),
                                                  ),
                                                  child: Padding(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 8.0),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          "illegal or obscene",
                                                          style: AppTextStyle
                                                              .bodyNormal13
                                                              .copyWith(
                                                            color: AppColors
                                                                .kBlackColor,
                                                          ),
                                                        ),
                                                        Icon(Icons
                                                            .keyboard_arrow_down_rounded)
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 10.h,
                                              ),
                                              Text(
                                                "CONTENTS",
                                                style: AppTextStyle.bodyNormal13
                                                    .copyWith(
                                                  color: AppColors.kBlackColor,
                                                ),
                                              ),
                                              SizedBox(height: 8.h),
                                              CommonTextFieldNew(
                                                onSaved: (e) {},
                                                validator: (e) {},
                                                filled: false,
                                                contentPadding:
                                                    EdgeInsets.all(10),
                                                hintText:
                                                    'Please enter your content, (50 characters or less)',
                                              ),
                                              SizedBox(height: 14.h),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Container(
                                                    height: 40.h,
                                                    width: 120.w,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          AppColors.kBlackColor,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.r),
                                                    ),
                                                    child: Center(
                                                        child: Text(
                                                      "REPORT",
                                                      style: AppTextStyle
                                                          .bodyNormal13
                                                          .copyWith(
                                                              color: AppColors
                                                                  .kWhiteColor),
                                                    )),
                                                  ),
                                                  Container(
                                                    height: 40.h,
                                                    width: 120.w,
                                                    decoration: BoxDecoration(
                                                      border: Border.all(
                                                        color: AppColors
                                                            .kBlackColor,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.r),
                                                    ),
                                                    child: Center(
                                                        child: Text("CANCEL")),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        );
                                      }));
                                    });
                              }
                            },
                            icon: const Icon(
                              Icons.more_horiz,
                            ),
                            items: items.map<DropdownMenuItem<String>>((e) {
                              return DropdownMenuItem(
                                child: Text(e),
                                value: e,
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownvalue = newValue!;
                              });
                            },
                          ),
                        ),
                        // GestureDetector(
                        //   onTap: () {
                        //              },
                        //   child: Icon(
                        //     Icons.more_horiz,
                        //     color: AppColors.kBlackColor,
                        //     size: 15.5.w,
                        //   ),
                        // ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16.w),
                // padding: EdgeInsets.symmetric(horizontal: 16.w),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    color: AppColors.kWhiteColor,
                    boxShadow: [
                      BoxShadow(
                          color: AppColors.kBlackColor.withOpacity(0.1),
                          blurRadius: 10,
                          spreadRadius: 2)
                    ]),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 20.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: Text(
                        'It rained a little in the morning and the weather was cloudy, but in the afternoon it got clearer~',
                        style: AppTextStyle.bodyNormal13.copyWith(
                            color: AppColors.kBlackColor, fontSize: 14.sp),
                      ),
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    Image.asset(
                      AppAssets.office,
                      height: 242.h,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: Text(
                        'Im sitting in a cafe with a pretty view, doing homework and reading #books.',
                        style: AppTextStyle.bodyNormal13.copyWith(
                            color: AppColors.kBlackColor, fontSize: 14.sp),
                      ),
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    SizedBox(
                      height: 1.h,
                      child: Center(
                        child: Container(
                          height: 5.0,
                          color: AppColors.kGrayColor14,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: Row(
                        children: [
                          Icon(
                            Icons.favorite,
                            color: AppColors.kRedColor,
                            size: 21.h,
                          ),
                          SizedBox(
                            width: 6.w,
                          ),
                          Text(
                            '1300',
                            style: GoogleFonts.poppins(
                                fontSize: 12.sp, color: AppColors.kBlackColor),
                          ),
                          SizedBox(
                            width: 12.w,
                          ),
                          SvgPicture.asset(
                            AppAssets.commentIcon,
                            color: AppColors.kBlackColor,
                            height: 20.h,
                            width: 20.w,
                          ),
                          SizedBox(
                            width: 6.w,
                          ),
                          Text(
                            '1300',
                            style: GoogleFonts.poppins(
                                fontSize: 12.sp, color: AppColors.kBlackColor),
                          ),
                          SizedBox(
                            width: 12.w,
                          ),
                          Icon(
                            Icons.copy,
                            color: AppColors.kBlackColor,
                            size: 21.h,
                          ),
                          SizedBox(
                            width: 6.w,
                          ),
                          Text(
                            '1300',
                            style: GoogleFonts.poppins(
                                fontSize: 12.sp, color: AppColors.kBlackColor),
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              onShare(context);
                            },
                            child: SvgPicture.asset(
                              AppAssets.share2Icon,
                              height: 19.h,
                              width: 17.5.w,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    SizedBox(
                      height: 1.h,
                      child: Center(
                        child: Container(
                          height: 5.0,
                          color: AppColors.kGrayColor14,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    const CommentBoxPosts(),
                    const CommentBoxPosts(),
                    const CommentBoxPosts(),
                  ],
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
        decoration: const BoxDecoration(
          color: AppColors.kWhiteColor,
          border: Border(top: BorderSide(color: AppColors.kGrayColor15)),
        ),
        child: Row(
          children: [
            CircleAvatar(
              radius: 20.r,
              backgroundColor: AppColors.kPurple2Color,
              child: SvgPicture.asset(
                AppAssets.lockIcon,
                color: AppColors.kWhiteColor,
                height: 20.h,
                width: 16.w,
              ),
            ),
            SizedBox(
              width: 6.w,
            ),
            Container(
              width: 290.w,
              height: 36.h,
              decoration: BoxDecoration(
                  border: Border.all(color: AppColors.kGrayColor14),
                  borderRadius: BorderRadius.circular(18.r)),
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: Row(
                children: [
                  SizedBox(
                    width: 200.w,
                    child: CommonTextFieldNew(
                      onSaved: (e) {},
                      validator: (e) {},
                      filled: false,
                      disableBorder: true,
                      hintText: 'Please enter your comments.',
                      hintStyle: AppTextStyle.bodyNormal13.copyWith(
                          color: AppColors.kGrayColor15, fontSize: 14.sp),
                    ),
                  ),
                  const Spacer(),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'OK',
                      style: AppTextStyle.bodyNormal13
                          .copyWith(color: AppColors.kPurple3Color),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void onShare(BuildContext context) async {
    final box = context.findRenderObject() as RenderBox?;
    await Share.share('Share Post',
        subject: 'Share Post',
        sharePositionOrigin: box!.localToGlobal(Offset.zero) & box.size);
  }
}

cupertinoBottomSheetShowForDialog(context) {
  showCupertinoModalPopup(
      barrierColor: Colors.black.withOpacity(0.7),
      context: context,
      builder: (context) {
        return CupertinoActionSheet(
          actions: [
            CupertinoActionSheetAction(
              onPressed: () {
                Navigator.pop(context, true);
              },
              child: Text("criminaal \$ sexual"),
            ),
            CupertinoActionSheetAction(
              onPressed: () {
                Navigator.pop(context, true);
              },
              child: Text("Spam"),
            ),
            CupertinoActionSheetAction(
              onPressed: () {
                Navigator.pop(context, true);
              },
              child: Text("Violated"),
            ),
            CupertinoActionSheetAction(
              onPressed: () {
                Navigator.pop(context, true);
              },
              child: Text("etc"),
            ),
          ],
          cancelButton: CupertinoActionSheetAction(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                "Cancel",
              )),
        );
      });
}
