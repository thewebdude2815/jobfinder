import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobfinder/helpers/routes.dart';

void main() {
  runApp(const Werktion());
}

class Werktion extends StatelessWidget {
  const Werktion({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: ((context, child) {
        return GetMaterialApp(
          theme: ThemeData(
            textTheme: GoogleFonts.robotoTextTheme(),
          ),
          debugShowCheckedModeBanner: false,
          builder: (context, child) {
            ScreenUtil.init(context, designSize: const Size(375, 812));
            return MediaQuery(
                data: MediaQuery.of(context).copyWith(textScaleFactor: 1.sp),
                child: child!);
          },
          getPages: Routes.getPages,
          initialRoute: Routes.splashRoute,
        );
      }),
    );
  }
}
