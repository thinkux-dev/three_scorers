import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:three_scorers/common/routes/routes.dart';
import 'package:three_scorers/common/utils/app_styles.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

final GlobalKey<NavigatorState> navKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812), //Size(360, 690)
      // minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp(
          navigatorKey: navKey,
          title: '3 Scorers',
          debugShowCheckedModeBanner: false,
          theme: AppTheme.appThemeData,
          onGenerateRoute: AppPages.generateRouteSettings,
        );
      },
    );
  }
}