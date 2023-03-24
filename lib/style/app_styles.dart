import 'package:first_task_basic/style/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppStyles {
  static var mainTheme = ThemeData(fontFamily: 'OpenSans');

  static double headerIconSize = 18;
  static double descriptionLocationIconSize = 14;
  static double moreIconSize = 16;
  static double specificationIconSize = 16;

  static var appbarTitleTextStyle =
      TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w600);
  static var imageCounterTextStyle = TextStyle(
      fontSize: 9.sp, fontWeight: FontWeight.w400, color: AppColors.white);
  static var titleTextStyle =
      TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w400);
  static var detailsLocationTextStyle = TextStyle(
      fontSize: 13.sp, fontWeight: FontWeight.w400, color: AppColors.blue);
  static var detailsPriceTextStyle = TextStyle(
      fontSize: 16.sp, fontWeight: FontWeight.w600, color: AppColors.black);
  static var boldTitleTextStyle =
      TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w700);
  static var descriptionContentTextStyle =
      TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400);
  static var moreTextStyle = TextStyle(
      fontSize: 12.sp, fontWeight: FontWeight.w400, color: AppColors.blue);
  static var specSubtitleTextStyle = TextStyle(
      fontSize: 12.sp,
      fontWeight: FontWeight.w400,
      color: AppColors.transparentGrey);
  static var specSectionTextStyle =
      TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w400);
  static var specValueTextStyle =
      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w400);
  static var linkContentTextStyle =
      TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w400);
}
