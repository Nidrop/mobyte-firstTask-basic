import 'package:first_task_basic/iconAdapters/first_task_basic_icons.dart';
import 'package:first_task_basic/style/app_colors.dart';
import 'package:first_task_basic/style/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 12.h, bottom: 15.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Квартира-студия, 40м, 16/23 эт.',
            style: AppStyles.titleTextStyle,
          ),
          SizedBox(
            height: 2.h,
          ),
          Row(
            children: [
              Icon(
                FirstTaskBasicIcons.geo_alt,
                size: AppStyles.descriptionLocationIconSize,
                color: AppColors.blue,
              ),
              SizedBox(
                width: 4.w,
              ),
              Text(
                'Центр (Кировский р-н.), Очаковская, 39',
                style: AppStyles.detailsLocationTextStyle,
              )
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
              color: AppColors.yellow,
              padding:
                  EdgeInsets.only(top: 3.h, bottom: 4.h, left: 5.w, right: 5.w),
              //child: Text('2,3 млн ₽'),
              child: RichText(
                text: TextSpan(
                    text: '2,3 млн ',
                    style: AppStyles.detailsPriceTextStyle,
                    children: <TextSpan>[
                      TextSpan(
                          text: '₽',
                          style: AppStyles.detailsPriceTextStyle
                              .copyWith(fontFamily: 'Roboto')),
                    ]),
              ))
        ],
      ),
    );
  }
}
