import 'package:first_task_basic/screens/offer_page.dart';
import 'package:first_task_basic/style/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      //designSize: const Size(393, 830),
      designSize: const Size(375, 941),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'First Task basic',
          theme: AppStyles.mainTheme,
          home: child,
        );
      },
      child: const OfferPage(),
    );
  }
}
