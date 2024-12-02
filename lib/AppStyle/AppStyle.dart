

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/AppStyle/AppColors.dart';
import 'package:news_app/main.dart';

class AppStyle{

  static ThemeData lightTheme = ThemeData(

    colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.lightPrimary,
        primary: AppColors.lightPrimary
    ),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(
        color: Colors.white,
        size: 27.sp
      ),
      backgroundColor: AppColors.lightPrimary,
      centerTitle: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50.r),
          bottomRight: Radius.circular(50.r)
        ),
      ),
      titleTextStyle: TextStyle(
        fontFamily: "Exo",
        fontSize: 22.sp,
        fontWeight: FontWeight.w400,
        color: Colors.white
      )

    ),
    textTheme: TextTheme(
      headlineMedium: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 24.sp,
        color: Colors.white
      ),
      titleMedium: TextStyle(
        fontSize: 22.sp,
        fontWeight: FontWeight.w700,
        color: AppColors.greyColor,
      )
    )




  );

}