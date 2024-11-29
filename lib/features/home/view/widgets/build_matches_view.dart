import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:three_scorers/common/utils/image_res.dart';
import 'package:three_scorers/features/home/controller/home_tab_controller.dart';

class BuildMatchCard extends StatelessWidget {
  final String leagueName;
  final String leagueLogo;
  final String gameWeek;
  final String homeTeamName;
  final String homeTeamLogo;
  final String awayTeamName;
  final String awayTeamLogo;
  final String matchDate;
  final String matchScore;
  final String matchStatus;

  const BuildMatchCard({
    super.key,
    required this.leagueName,
    required this.leagueLogo,
    required this.gameWeek,
    required this.homeTeamName,
    required this.homeTeamLogo,
    required this.awayTeamName,
    required this.awayTeamLogo,
    required this.matchDate,
    required this.matchScore,
    required this.matchStatus,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
              // League Logo and Name
              Row(
                children: [
                  Image.asset(
                    leagueLogo,
                    width: 24.w,
                    height: 24.h,
                  ),
                  SizedBox(width: 8.w),
                  Text(
                    leagueName,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),

              // Game Week
              Text(
                gameWeek,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12.sp,
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Home Team Column
              buildTeamColumn(
                teamLogo: homeTeamLogo,
                teamName: homeTeamName,
                isHome: true,
              ),

              // Match Details Column
              Column(
                children: [
                  Text(
                    matchDate,
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: Colors.grey[600],
                    ),
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    matchScore,
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    matchStatus,
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: _getStatusColor(matchStatus),
                    ),
                  ),
                ],
              ),

              // Away Team Column
              buildTeamColumn(
                teamLogo: awayTeamLogo,
                teamName: awayTeamName,
                isHome: false,
              ),
            ],
          ),
        ),
      ],
    );
  }

  // Helper method to build team column
  Widget buildTeamColumn({
    required String teamLogo,
    required String teamName,
    required bool isHome,
  }) {
    return Column(
      children: [
        Image.asset(
          teamLogo,
          width: 40.w,
          height: 40.h,
        ),
        SizedBox(height: 4.h),
        Text(
          teamName,
          style: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w600,
          ),
          textAlign: isHome ? TextAlign.left : TextAlign.right,
        ),
      ],
    );
  }

  // Helper method to get status color
  Color _getStatusColor(String status) {
    switch (status.toLowerCase()) {
      case 'live':
        return Colors.green;
      case 'full-time':
        return Colors.grey;
      case 'upcoming':
        return Colors.blue;
      default:
        return Colors.black;
    }
  }
}


// Widget buildTeamColumn({
//   required String teamLogo,
//   required String teamName,
//   required bool isHome,
//   List<Map<String, dynamic>> scorers = const [],
// }) {
//   return Column(
//     // mainAxisAlignment: MainAxisAlignment.start,
//     children: [
//       Image.asset(
//         teamLogo,
//         width: 50.w,
//         height: 50.h,
//       ),
//       SizedBox(height: 4.h),
//       Text(
//         teamName,
//         style: TextStyle(
//           fontSize: 16.sp,
//           fontWeight: FontWeight.w500,
//           color: Colors.white,
//         ),
//         textAlign: isHome ? TextAlign.left : TextAlign.right,
//       ),
//       if (scorers.isNotEmpty) SizedBox(height: 8.h),
//       ...scorers.map((scorer) => Text(
//         '${scorer['name']} ${scorer['scoreTime']}',
//         style: TextStyle(
//           fontSize: 12.sp,
//           color: Colors.white70,
//           fontWeight: FontWeight.w400,
//         ),
//         textAlign: isHome ? TextAlign.left : TextAlign.right,
//       )).toList(),
//     ],
//   );
// }


// Widget buildLiveMatchesContent() {
//   return Consumer(
//     builder: (context, ref, child) {
//       final matchesAsync = ref.watch(matchesNotifierProvider);
//
//       return matchesAsync.when(
//         loading: () => const Center(child: CircularProgressIndicator()),
//         error: (error, stackTrace) => Center(
//           child: Text('Error loading matches: $error'),
//         ),
//         data: (matchEntities) {
//           final events = matchEntities.data?.event ?? [];
//           return RefreshIndicator(
//             onRefresh: () => ref.read(matchesNotifierProvider.notifier).refreshMatches(),
//             child: ListView.separated(
//               padding: EdgeInsets.symmetric(horizontal: 16.w),
//               itemCount: events.,
//               separatorBuilder: (context, index) => SizedBox(height: 16.h),
//               itemBuilder: (context, index) {
//                 return BuildMatchCard(
//                   leagueName: matchEntities.data?.event?.tournament?.name ?? 'UEFA Champions League',
//                   leagueLogo: ImageRes.laligaIcon, // Replace with dynamic logo fetching
//                   gameWeek: 'Game Week 15', // TODO: Extract from data
//                   homeTeamName: matchEntities.data?.event?.homeTeam?.name ?? 'home team',
//                   homeTeamLogo: ImageRes.laligaIcon, // TODO: Replace with dynamic logo
//                   awayTeamName: matchEntities.data?.event?.awayTeam?.name ?? 'home team',
//                   awayTeamLogo: ImageRes.laligaIcon, // TODO: Replace with dynamic logo
//                   matchDate: 'May 21, 2024', // TODO: Extract from data
//                   matchScore: '3 - 3', // TODO: Extract from data
//                   matchStatus: matchEntities.data?.event?.status?.type ?? 'neutral',
//                 );
//               },
//             ),
//           );
//         },
//       );
//     },
//   );
// }
//
// // Similar implementations for New and Past Matches
// Widget buildNewMatchesContent() {
//   return ListView.separated(
//     padding: EdgeInsets.symmetric(horizontal: 16.w),
//     itemCount: 5, // Replace with actual number of matches
//     separatorBuilder: (context, index) => SizedBox(height: 16.h),
//     itemBuilder: (context, index) {
//       return BuildMatchCard(
//         leagueName: 'Premier League',
//         leagueLogo: ImageRes.eplIcon, // Replace with actual path
//         gameWeek: 'Game Week 15',
//         homeTeamName: 'Manchester United',
//         homeTeamLogo: ImageRes.eplIcon, // Replace with actual path
//         awayTeamName: 'Liverpool',
//         awayTeamLogo: ImageRes.eplIcon, // Replace with actual path
//         matchDate: 'May 25, 2024',
//         matchScore: '0 - 0',
//         matchStatus: 'Upcoming',
//       );
//     },
//   );
// }
//
// Widget buildPastMatchesContent() {
//   return ListView.separated(
//     padding: EdgeInsets.symmetric(horizontal: 16.w),
//     itemCount: 5, // Replace with actual number of matches
//     separatorBuilder: (context, index) => SizedBox(height: 16.h),
//     itemBuilder: (context, index) {
//       return BuildMatchCard(
//         leagueName: 'Champions League',
//         leagueLogo: ImageRes.laligaIcon, // Replace with actual path
//         gameWeek: 'Game Week 15',
//         homeTeamName: 'Chelsea',
//         homeTeamLogo: ImageRes.laligaIcon, // Replace with actual path
//         awayTeamName: 'Arsenal',
//         awayTeamLogo: ImageRes.laligaIcon, // Replace with actual path
//         matchDate: 'May 15, 2024',
//         matchScore: '1 - 3',
//         matchStatus: 'Full-Time',
//       );
//     },
//   );
// }
