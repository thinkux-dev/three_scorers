import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:three_scorers/common/utils/image_res.dart';
import 'package:three_scorers/common/widgets/image_widgets.dart';

class VideoPlayerHighlights extends StatelessWidget {
  final String thumbnailImage;
  final String homeClubLogo;
  final String homeClubName;
  final String awayClubLogo;
  final String awayClubName;

  const VideoPlayerHighlights({
    super.key,
    required this.thumbnailImage,
    required this.homeClubLogo,
    required this.homeClubName,
    required this.awayClubLogo,
    required this.awayClubName,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Thumbnail Image
        Container(
          width: double.infinity,
          height: 200.h,
          margin: EdgeInsets.only(bottom: 20.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(thumbnailImage),
              fit: BoxFit.cover,
            ),
          ),

          // Highlights Text
          child: Align(
            alignment: Alignment.topRight,
            child: Container(
              margin: EdgeInsets.all(10.w),
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
              child: Text(
                'Watch Highlight',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),

        // Center Row with Match Details
        Positioned(
          top: 55.h,
          left: 0,
          right: 0,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Home Club Column
                _buildClubColumn(
                  logo: homeClubLogo,
                  name: homeClubName,
                  isHome: true,
                ),

                // Play Button
                AppImage(
                  imagePath:  ImageRes.play,
                  width: 50.w,
                  height: 50.h,
                ),

                // Away Club Column
                _buildClubColumn(
                  logo: awayClubLogo,
                  name: awayClubName,
                  isHome: false,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildClubColumn({
    required String logo,
    required String name,
    required bool isHome,
  }) {
    return Container(
      margin: isHome ? EdgeInsets.only(left: 10.w) : EdgeInsets.only(right: 10.w),
      child: Column(
        children: [
          Container(
            width: 80.w,
            height: 80.h,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(logo),
                fit: BoxFit.contain,
              ),
            ),
          ),
          SizedBox(height: 4.h),
          Text(
            name,
            style: TextStyle(
              color: Colors.white,
              fontSize: 12.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}