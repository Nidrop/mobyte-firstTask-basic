import 'package:first_task_basic/style/app_colors.dart';
import 'package:first_task_basic/style/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageSlider extends StatefulWidget {
  const ImageSlider({super.key});

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  List<String> images = [
    "images/slide-img.jpg",
    "images/slide-img.jpg",
    "images/slide-img.jpg",
    "images/slide-img.jpg",
    "images/slide-img.jpg",
  ];

  int activeImageIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 235.h,
      child: Stack(alignment: Alignment.center, children: [
        PageView.builder(
          itemCount: 5,
          pageSnapping: true,
          itemBuilder: (context, pagePosition) {
            return Container(
                margin: EdgeInsets.symmetric(horizontal: 15.w),
                child: Image.asset(
                  images[pagePosition],
                  fit: BoxFit.cover,
                ));
          },
          onPageChanged: _onPageChanged,
        ),
        Positioned(
            bottom: 10.h,
            child: Container(
              width: 35.w,
              height: 16.h,
              decoration: BoxDecoration(
                  color: AppColors.transparentBlack,
                  borderRadius: BorderRadius.circular(4.r)),
              child: Center(
                child: Text(
                  '${activeImageIndex + 1}/${images.length}',
                  style: AppStyles.imageCounterTextStyle,
                ),
              ),
            ))
      ]),
    );
  }

  void _onPageChanged(int index) {
    setState(() {
      activeImageIndex = index;
    });
  }
}
