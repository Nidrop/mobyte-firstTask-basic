import 'package:first_task_basic/style/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class Link extends StatelessWidget {
  const Link({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTap,
      behavior: HitTestBehavior.translucent,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 11.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset('images/avito.png'),
          SizedBox(
            width: 10.w,
          ),
          Text(
            'Смотреть на Avito',
            style: AppStyles.linkContentTextStyle,
          ),
        ]),
      ),
    );
  }

  Future<void> _onTap() async {
    final Uri avitoUrl = Uri.parse('https://www.avito.ru/');
    if (!await launchUrl(avitoUrl)) {
      throw Exception('Could not launch $avitoUrl');
    }
  }
}
