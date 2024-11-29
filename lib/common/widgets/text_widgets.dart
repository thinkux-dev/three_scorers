import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:three_scorers/common/utils/app_colors.dart';

class Text16Normal extends StatelessWidget {
  final String? text;
  final Color color;
  final FontWeight fontWeight;
  final TextAlign? textAlign;
  final double fontSize;

  const Text16Normal({
    super.key,
    this.text="",
    this.color=AppColors.primaryBackground,
    this.fontWeight=FontWeight.normal,
    this.textAlign=TextAlign.center,
    this.fontSize = 16
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      textAlign: TextAlign.center,
      style:
      TextStyle(color: color, fontSize: fontSize.sp, fontWeight: fontWeight),
    );;
  }
}
