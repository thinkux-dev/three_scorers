import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:three_scorers/common/utils/app_colors.dart';
import 'package:three_scorers/common/utils/image_res.dart';
import 'package:three_scorers/common/widgets/image_widgets.dart';
import 'package:three_scorers/features/home/view/home.dart';
import 'package:three_scorers/features/matches/view/matches.dart';

var bottomTabs = <BottomNavigationBarItem>[
  BottomNavigationBarItem(
    icon: _bottomContainer(
        color: AppColors.primaryText,
      imagePath: ImageRes.homeIcon
    ),
    activeIcon: _bottomContainer(
      color: AppColors.primaryElement,
      imagePath: ImageRes.homeIcon
    ),
    backgroundColor: AppColors.primaryBackground,
    label: "Home",
  ),

  BottomNavigationBarItem(
    icon: _bottomContainer(
        color: AppColors.primaryText,
        imagePath: ImageRes.ballIcon
    ),
    activeIcon: _bottomContainer(
      color: AppColors.primaryElement,
      imagePath: ImageRes.ballIcon,
    ),
    backgroundColor: AppColors.primaryBackground,
    label: "Matches",
  ),

  BottomNavigationBarItem(
    icon: _bottomContainer(
        color: AppColors.primaryText,
        imagePath: ImageRes.fantasyIcon
    ),
    activeIcon: _bottomContainer(
      color: AppColors.primaryElement,
      imagePath: ImageRes.fantasyIcon,
    ),
    backgroundColor: AppColors.primaryBackground,
    label: "Fantasy",
  ),

  BottomNavigationBarItem(
    icon: _bottomContainer(
      imagePath: ImageRes.shopIcon,
      color: AppColors.primaryText,
    ),
    activeIcon: _bottomContainer(
      color: AppColors.primaryElement,
      imagePath: ImageRes.shopIcon,
    ),
    backgroundColor: AppColors.primaryBackground,
    label: "Shop",
  ),

  BottomNavigationBarItem(
    icon: _bottomContainer(
      imagePath: ImageRes.shopIcon,
      color: AppColors.primaryText,
    ),
    activeIcon: _bottomContainer(
      color: AppColors.primaryElement,
      imagePath: ImageRes.shopIcon,
    ),
    backgroundColor: AppColors.primaryBackground,
    label: "My Profile",
  ),

];

Widget _bottomContainer({
  double width = 45,
  double height = 45,
  String imagePath = ImageRes.homeIcon,
  Color color = AppColors.primaryFourElementText,
}) {
  return SizedBox(
    width: width.w,
    height: height.w,
    child: AppImageWithColor(imagePath: imagePath, color: color),
  );
}

Widget appScreens({int index=0}){
  List<Widget> _screens = [
    const Home(),
    const Matches(),
    const Center(child: AppImage(imagePath: ImageRes.fantasyIcon, width: 250, height: 250,),),
    const Center(child: AppImage(imagePath: ImageRes.shopIcon, width: 250, height: 250,),),
    const Center(child: AppImage(imagePath: ImageRes.profileIcon, width: 250, height: 250,),),
  ];
  return _screens[index];
}