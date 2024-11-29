import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:three_scorers/common/utils/app_colors.dart';
import 'package:three_scorers/common/widgets/app_box_decor.dart';
import 'package:three_scorers/features/dashboard/controller/dashboard_nav_controller.dart';
import 'package:three_scorers/features/dashboard/widgets/widgets.dart';

class Dashboard extends ConsumerWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int index = ref.watch(dashboardNavIndexProvider);
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          body: appScreens(index: index),
          bottomNavigationBar: Container(
            width: 375.w,
            height: 75.h,
            decoration: appBoxShadowWithRadius(),
            child: BottomNavigationBar(
              currentIndex: index,
              onTap: (value){
                ref.read(dashboardNavIndexProvider.notifier).changeIndex(value);
              },
              elevation: 0,
              items: bottomTabs,
              type: BottomNavigationBarType.fixed,
              showSelectedLabels: true, // False removes the label of selected tap
              showUnselectedLabels: true, // False removes the label of unselected tap
              selectedItemColor: AppColors.primaryElement,
              unselectedItemColor: AppColors.primaryFourElementText,
              selectedFontSize: 12.sp,
              unselectedFontSize: 12.sp,
              selectedLabelStyle: TextStyle(fontSize: 12.sp),    // Optional: more control over label style
              unselectedLabelStyle: TextStyle(fontSize: 12.sp),
            ),
          ),
        ),
      ),
    );
  }
}

