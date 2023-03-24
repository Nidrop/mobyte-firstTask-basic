import 'package:first_task_basic/iconAdapters/first_task_basic_icons.dart';
import 'package:first_task_basic/style/app_colors.dart';
import 'package:first_task_basic/style/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Description extends StatelessWidget {
  const Description({super.key});

  final String descriptionText =
      'Дом расположен в ЗЖМ, мкр Левенцовский, вблизи остановки общественного транспорта. Рядом расположены гипермаркеты "Магнит", "Пятерочка", "Лента", "Метро", отделение "Сбербанка". В районе работают 6 детских садов, 1 школа. Есть собственная управляющая компания.';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Описание',
            style: AppStyles.boldTitleTextStyle,
          ),
          SizedBox(height: 11.h),
          Text(
            descriptionText,
            style: AppStyles.descriptionContentTextStyle,
          ),
          SizedBox(height: 7.h),
          Row(
            children: [
              Icon(
                FirstTaskBasicIcons.chevron_down,
                color: AppColors.blue,
                size: AppStyles.moreIconSize,
              ),
              SizedBox(width: 2.w),
              Text(
                'Подробнее',
                style: AppStyles.moreTextStyle,
              ),
            ],
          )
        ],
      ),
    );
  }
}
