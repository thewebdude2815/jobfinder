import 'dart:developer';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:jobfinder/screens/components/featured_job_widget.dart';

class FeaturedJobBanner extends StatefulWidget {
  const FeaturedJobBanner({Key? key}) : super(key: key);

  @override
  State<FeaturedJobBanner> createState() => _FeaturedJobBannerState();
}

class _FeaturedJobBannerState extends State<FeaturedJobBanner> {
  int carouselActiveIndex = 0;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
        itemCount: 3,
        itemBuilder: (context, index, realIndex) {
          return const FeaturedJobsWidget(
              companyName: 'Vacant Land',
              jobLocation: 'Remote',
              jobTitle: 'Product Designer',
              jobType: 'Fulltime',
              officeLocation: '7363 California, USA',
              pay: '90K/hr');
        },
        options: CarouselOptions(
          // autoPlay: true,
          height: 175.h,
          autoPlayInterval: const Duration(seconds: 5),
          viewportFraction: 0.90,
          enlargeCenterPage: false,

          enableInfiniteScroll: false,
          padEnds: true,
        ));
  }
}
