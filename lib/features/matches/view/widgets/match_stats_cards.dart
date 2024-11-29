import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:three_scorers/common/utils/image_res.dart';
import 'package:three_scorers/common/widgets/text_widgets.dart';

class MatchStatsCard extends StatelessWidget {
  final String POMText;
  final String? gameWeek;
  final String homeTeamName;
  final String homeTeamLogo;
  final String? awayTeamName;
  final String? awayTeamLogo;
  final String? matchDate;
  final String? matchScore;
  final String? matchStatus;

  const MatchStatsCard({
    super.key,
    this.POMText = 'Player Of The Match',
    this.gameWeek,
    this.homeTeamName = 'Team Name',
    this.homeTeamLogo = ImageRes.barca,
    this.awayTeamName,
    this.awayTeamLogo,
    this.matchDate,
    this.matchScore,
    this.matchStatus,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.h),
      child: Column(
        children: [
          // First Container (League and Game Week)
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
            decoration: BoxDecoration(
              color: const Color(0xFF008F8F),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12.r),
                topRight: Radius.circular(12.r),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Player Of The Match
                Text(
                  POMText,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),

          // Second Container (Match Details)
          Container(
            height: 100.h,
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 3,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Player Column
                PlayerRow(
                  teamLogo: homeTeamLogo,
                  teamName: homeTeamName,
                  isHome: true,
                ),

                // Player stats
                Container(
                  width: 33.w,
                  height: 21.h,
                  decoration: BoxDecoration(
                    color: const Color(0xFF008F8F),
                    borderRadius: BorderRadius.circular(5.sp)
                  ),
                  child: Center(
                    child: Text16Normal(
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w700,
                      text: '8.0',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


Widget PlayerRow({
  required String teamLogo,
  required String teamName,
  required bool isHome,
}) {
  return Row(
    children: [
      // Player Image
      Image.asset(
        teamLogo, //playerImage
        width: 65.w,
        height: 65.h,
      ),
      Container(
        margin: EdgeInsets.only(left: 8.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Player Name
            Text(
              teamName,
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: Colors.black
              ),
              textAlign: isHome ? TextAlign.left : TextAlign.right,
            ),
            SizedBox(height: 8.h, width: 8.w),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  teamLogo,
                  width: 20.w,
                  height: 20.h,
                ),
                SizedBox(width: 4.w),
                Text(
                  teamName,
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF4f4f4f)
                  ),
                  textAlign: isHome ? TextAlign.left : TextAlign.right,
                ),
              ],
            ),
          ],
        ),
      ),
    ],
  );
}

class MatchChartMomentum extends StatelessWidget {
  final String homeTeamLogo;
  final String awayTeamLogo;
  final double homeTeamPossession;
  final double awayTeamPossession;

  const MatchChartMomentum({
    super.key,
    required this.homeTeamLogo,
    required this.awayTeamLogo,
    this.homeTeamPossession = 60.0,
    this.awayTeamPossession = 40.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.h),
      child: Column(
        children: [
          // First Container (Header)
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
            decoration: BoxDecoration(
              color: const Color(0xFF008F8F),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12.r),
                topRight: Radius.circular(12.r),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Live Match Momentum',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),

          // Second Container (Match Details)
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 3,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              children: [
                // First Column Element: Possession Percentage
                Column(
                  children: [
                    // Possession Percentage Row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '${homeTeamPossession.toStringAsFixed(0)}%',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 14.sp,
                          ),
                        ),
                        Text(
                          'Ball Possession',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.sp,
                          ),
                        ),
                        Text(
                          '${awayTeamPossession.toStringAsFixed(0)}%',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 14.sp,
                          ),
                        ),
                      ],
                    ),

                    // Horizontal Possession Chart
                    SizedBox(height: 8.h),
                    Container(
                      height: 6.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            flex: homeTeamPossession.round(),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xffE1B726),
                                borderRadius: BorderRadius.horizontal(
                                  left: Radius.circular(100.r),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: awayTeamPossession.round(),
                            child: Container(
                              decoration: BoxDecoration(
                                color:  Color(0xffCF0C2A),
                                borderRadius: BorderRadius.horizontal(
                                  right: Radius.circular(100.r),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 16.h),

                // Second Column Element: Detailed Ball Possession Stats
                Row(
                  children: [
                    // Team Logos Column
                    Container(
                      margin: EdgeInsets.only(right: 8.w),
                      child: Column(
                        children: [
                          Image.asset(
                            homeTeamLogo,
                            width: 20.w,
                            height: 20.h,
                          ),
                          SizedBox(height: 10.h),
                          Image.asset(
                            awayTeamLogo,
                            width: 20.w,
                            height: 20.h,
                          ),
                        ],
                      ),
                    ),

                    // Match Detailed Chart
                    Expanded(
                      child: Container(
                        height: 100.h,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0xffFFF4CE),
                              Color(0xffFFBDC7),
                            ],
                            stops: const [0.5, 0.5],
                          ),
                        ),
                        child: CustomPaint(
                          painter: MatchMomentumChartPainter(),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MatchMomentumChartPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Random generator for more natural variation
    final Random random = Random();

    // Create paint for home team (yellow)
    final homePaint = Paint()
      ..color = Color(0xffE1B726)
      ..style = PaintingStyle.fill;

    // Create paint for away team (red)
    final awayPaint = Paint()
      ..color = Color(0xffCF0C2A)
      ..style = PaintingStyle.fill;

    // White border paint
    final borderPaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;

    // Blue ruler line paint
    final rulerPaint = Paint()
      ..color = Color(0xFF10CC00)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4;

    // Total bars with gap
    final int totalBars = 45; // Reduced further to create more gap

    // Thin bar width with significant gap consideration
    final barWidth = (size.width * 0.90) / totalBars; // 90% of width to create wider gap

    // Midline of the chart
    final midLine = size.height / 2;

    // Home team bars (top half) - now facing up from midline
    for (int i = 0; i < totalBars; i++) {
      double height;

      // First 9 bars with varied heights
      if (i < 9) {
        height = size.height * 0.4 * (0.5 + (i % 5) * 0.1);
      }
      // Last 11 bars with minimal height
      else if (i >= 39) {
        height = size.height * 0.05; // Very small height, close to starting point
      }
      // Middle bars with varied heights
      else {
        // Generate more varied heights
        height = size.height * (0.1 + random.nextDouble() * 0.3);
      }

      Rect homeRect = Rect.fromLTWH(
          i * barWidth,
          midLine - height, // Start from midline and go up
          barWidth,
          height
      );

      // Draw home team bar
      canvas.drawRect(homeRect, homePaint);
      canvas.drawRect(homeRect, borderPaint);
    }

    // Away team bars (bottom half)
    for (int i = 0; i < totalBars; i++) {
      double height;

      // First 6 bars with minimal height
      if (i < 6) {
        height = size.height * 0.05; // Very small height, close to starting point
      }
      // Remaining bars with varied heights
      else {
        // Generate more varied heights
        height = size.height * (0.1 + random.nextDouble() * 0.3);
      }

      Rect awayRect = Rect.fromLTWH(
          i * barWidth,
          midLine, // Start from midline and go down
          barWidth,
          height
      );

      // Draw away team bar
      canvas.drawRect(awayRect, awayPaint);
      canvas.drawRect(awayRect, borderPaint);
    }

    // Draw blue ruler line
    canvas.drawLine(
        Offset(size.width * 0.90, 0),
        Offset(size.width * 0.90, size.height),
        rulerPaint
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}