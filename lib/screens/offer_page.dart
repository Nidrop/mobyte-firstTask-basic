import 'package:first_task_basic/iconAdapters/first_task_basic_icons.dart';
import 'package:first_task_basic/style/app_colors.dart';
import 'package:first_task_basic/style/app_styles.dart';
import 'package:first_task_basic/widgets/offer_page/details.dart';
import 'package:first_task_basic/widgets/offer_page/description.dart';
import 'package:first_task_basic/widgets/offer_page/image_slider.dart';
import 'package:first_task_basic/widgets/offer_page/link.dart';
import 'package:first_task_basic/widgets/offer_page/specification.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OfferPage extends StatelessWidget {
  const OfferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: AppColors.white,
          foregroundColor: AppColors.black,
          elevation: 0,
          title: Text(
            'Предложение',
            style: AppStyles.titleTextStyle,
          ),
          centerTitle: true,
          actions: [
            Icon(
              FirstTaskBasicIcons.upload,
              size: AppStyles.headerIconSize,
              color: AppColors.blue,
            ),
            SizedBox(
              width: 17.w,
            ),
            Icon(
              FirstTaskBasicIcons.three_dots,
              size: AppStyles.headerIconSize,
              color: AppColors.blue,
            ),
            SizedBox(
              width: 9.w,
            )
          ]),
      body: ListView(
        children: [
          ImageSlider(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(children: [
              Details(),
              SizedBox(height: 10.h),
              Description(),
              SizedBox(height: 10.h),
              Specification(),
              SizedBox(height: 10.h),
              Link(),
              SizedBox(height: 16.h),
            ]),
          )
        ],
      ),
    );
  }
}
