import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:three_scorers/common/utils/image_res.dart';
import 'package:three_scorers/features/matches/view/widgets/match_stats_cards.dart';
import 'package:three_scorers/features/matches/view/widgets/video_player.dart';

class Overview extends StatelessWidget {
  const Overview({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(top: 350.h, left: 10.w, right: 10.w, bottom: 10.h),
        child: const Column(
          children: [
            // Video Player Highlight
            VideoPlayerHighlights(
              thumbnailImage: ImageRes.highlight,
              homeClubLogo: ImageRes.barca,
              homeClubName: 'Barcelona',
              awayClubLogo: ImageRes.girona,
              awayClubName: 'Girona',
            ),

            //Player of the match card
            MatchStatsCard(),
            MatchStatsCard(),

            //TODO Place other Overview Widgets Here
            MatchChartMomentum(
              awayTeamLogo: ImageRes.girona,
              homeTeamLogo: ImageRes.barca,
              awayTeamPossession: 40,
              homeTeamPossession: 60,
            ),
          ],
        ),
      ),
    );
  }
}
