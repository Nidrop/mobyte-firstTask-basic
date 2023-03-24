import 'package:first_task_basic/iconAdapters/first_task_basic_icons.dart';
import 'package:first_task_basic/style/app_colors.dart';
import 'package:first_task_basic/style/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Specification extends StatelessWidget {
  const Specification({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Характеристики',
            style: AppStyles.boldTitleTextStyle,
          ),
          SizedBox(height: 11.h),
          Text(
            'Об объекте',
            style: AppStyles.specSubtitleTextStyle,
          ),
          const SpecColumn(),
          SizedBox(height: 7.h),
          Row(
            children: [
              Icon(
                FirstTaskBasicIcons.chevron_down,
                size: AppStyles.moreIconSize,
                color: AppColors.blue,
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

class SpecColumn extends StatelessWidget {
  const SpecColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SpecListTile(
          section: 'Планировка',
          value: 'Смежная',
          sectionIcon: FirstTaskBasicIcons.border_outer,
        ),
        Divider(
          height: 1.h,
        ),
        SpecListTile(
          section: 'Высота потолков',
          value: 'От 2,5 м',
          sectionIcon: FirstTaskBasicIcons.border_top,
        ),
        Divider(
          height: 1.h,
        ),
        SpecListTile(
          section: 'Ремонт',
          value: 'Без ремонта',
          sectionIcon: FirstTaskBasicIcons.tools,
        ),
        Divider(
          height: 1.h,
        ),
      ],
    );
  }
}

class SpecListTile extends StatelessWidget {
  const SpecListTile(
      {super.key,
      required this.section,
      required this.value,
      required this.sectionIcon});

  final String section;
  final String value;
  final IconData sectionIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 15.h),
        child: Row(
          children: [
            Icon(
              sectionIcon,
              size: AppStyles.specificationIconSize,
              color: AppColors.black,
            ),
            SizedBox(width: 10.w),
            Text(section, style: AppStyles.specSectionTextStyle),
            Flexible(child: Container()),
            Text(value, style: AppStyles.specValueTextStyle),
          ],
        ));
    /*
    return ListTile(
      minLeadingWidth: 10.w,
      minVerticalPadding: 11.h,
      contentPadding: EdgeInsets.zero,
      leading: Icon(
        sectionIcon,
        size: AppStyles.specificationIconSize,
        color: AppColors.black,
      ),
      title: Text(
        section,
        style: AppStyles.specSectionTextStyle,
      ),
      trailing: Text(
        value,
        style: AppStyles.specValueTextStyle,
      ),
    );
    */
  }
}
