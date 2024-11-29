import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:three_scorers/common/utils/app_colors.dart';

class AppImage extends StatelessWidget {
  final String imagePath; ///replace "assets/icons/user.png" with "ImageRes.defaultImg"
  final double width;
  final double height;
  final BoxFit? fit;

  const AppImage({
    super.key,
    this.imagePath = "assets/icons/shop_icon.png",
    this.height = 16,
    this.width = 16,
    this.fit
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagePath.isEmpty ? "assets/icons/shop_icon.png" : imagePath, ///replace "assets/icons/user.png" with "ImageRes.defaultImg"
      width: width.w,
      height: height.h,
      fit: fit,
    );
  }
}

class AppImageWithColor extends StatelessWidget {
  final String imagePath;
  final double width;
  final double height;
  final Color color;

   const AppImageWithColor({
    super.key,
    this.imagePath = '',
    this.width = 16,
    this.height = 16,
    this.color = AppColors.primaryElement,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagePath.isEmpty ? "assets/icons/shop_icon.png" : imagePath,  ///replace "assets/icons/user.png" with "ImageRes.defaultImg"
      width: width.w,
      height: height.h,
      color: color,
    );
  }
}
