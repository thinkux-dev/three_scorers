import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:three_scorers/common/models/match_entities.dart';
import 'package:three_scorers/common/widgets/app_bar.dart';
import 'package:three_scorers/features/home/controller/home_tab_controller.dart';
import 'package:three_scorers/features/home/view/widgets/build_matches_view.dart';

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabIndex = ref.watch(homeTabIndexProvider);
    final matchesAsync = ref.watch(matchesNotifierProvider);

    return DefaultTabController(
      length: 3, // Number of tabs
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: homeBuildAppbar(),
        body: RefreshIndicator(
          onRefresh: () async {
            ref.read(matchesNotifierProvider.notifier).refreshMatches();
          },
          child: Column(
            children: [
              SizedBox(height: 270.h), // Match the app bar height
              Expanded(
                child: matchesAsync.when(
                  data: (matchData) => TabBarView(
                    children: [
                      _buildMatchesList(matchData, MatchType.live),
                      _buildMatchesList(matchData, MatchType.upcoming),
                      _buildMatchesList(matchData, MatchType.past),
                    ],
                  ),
                  loading: () => const Center(child: CircularProgressIndicator()),
                  error: (error, stack) => Center(
                    child: Text('Error loading matches: $error'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper method to build matches list based on match type
  Widget _buildMatchesList(MatchEntities matchData, MatchType type) {
    // Filter matches based on type
    // You'll need to implement logic to categorize matches
    return ListView.separated(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      itemCount: 5, // Replace with actual number of matches
      separatorBuilder: (context, index) => SizedBox(height: 16.h),
      itemBuilder: (context, index) {
        return BuildMatchCard(
          leagueName: matchData.data?.event?.tournament?.name ?? 'Unknown League',
          leagueLogo: '', // You'll need to map tournament to logo
          gameWeek: 'Game Week', // Add logic to determine game week
          homeTeamName: matchData.data?.event?.homeTeam?.name ?? 'Home Team',
          homeTeamLogo: '', // Map home team to logo
          awayTeamName: matchData.data?.event?.awayTeam?.name ?? 'Away Team',
          awayTeamLogo: '', // Map away team to logo
          matchDate: _formatMatchDate(matchData.data?.event?.startTimestamp),
          matchScore: _formatMatchScore(matchData.data?.event?.homeScore, matchData.data?.event?.awayScore),
          matchStatus: _determineMatchStatus(matchData.data?.event?.status),
        );
      },
    );
  }

  // Helper methods to format data
  String _formatMatchDate(int? timestamp) {
    if (timestamp == null) return 'Unknown Date';
    final date = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
    return '${date.day} ${_getMonthName(date.month)} ${date.year}';
  }

  String _getMonthName(int month) {
    const months = [
      'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
      'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'
    ];
    return months[month - 1];
  }

  String _formatMatchScore(HomeScore? homeScore, AwayScore? awayScore) {
    if (homeScore == null || awayScore == null) return '0 - 0';
    return '${homeScore.current ?? 0} - ${awayScore.current ?? 0}';
  }

  String _determineMatchStatus(Status? status) {
    if (status == null) return 'Unknown';
    switch (status.type) {
      case 'finished':
        return 'Full-Time';
      case 'inprogress':
        return 'Live';
      case 'notstarted':
        return 'Upcoming';
      default:
        return 'Unknown';
    }
  }
}

// Enum to help categorize matches
enum MatchType {
  live,
  upcoming,
  past
}