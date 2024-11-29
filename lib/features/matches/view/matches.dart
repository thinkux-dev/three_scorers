import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:three_scorers/common/widgets/app_bar.dart';
import 'package:three_scorers/features/matches/view/widgets/overview.dart';

class Matches extends StatelessWidget {
  const Matches({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: matchesBuildAppbar(title: 'Match Details'),
        body: Column(
          children: [
            SizedBox(height: 20.h), // Adjust to match AppBar height
            Expanded(
              child: TabBarView(
                children: [

                  // OverView Tab
                  Overview(),

                  // Line-up Tab
                  Overview(),

                  // Stats Tab
                  Overview(),

                  // Matches
                  Overview(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
