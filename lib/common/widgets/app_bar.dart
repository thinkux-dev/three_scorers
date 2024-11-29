import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:three_scorers/common/utils/app_colors.dart';
import 'package:three_scorers/common/utils/image_res.dart';
import 'package:three_scorers/common/widgets/image_widgets.dart';
import 'package:three_scorers/common/widgets/text_widgets.dart';
import 'package:three_scorers/features/home/controller/home_tab_controller.dart';
import 'package:three_scorers/features/home/view/widgets/build_matches_view.dart';
import 'package:three_scorers/features/home/view/widgets/league_icon_selector.dart';

AppBar homeBuildAppbar({String title = 'Login'}) {
  return AppBar(
    centerTitle: true,
    toolbarHeight: 250.h,
    backgroundColor: Colors.transparent,
    elevation: 0,
    flexibleSpace: Stack(
      children: [
        // Background Image
        Center(
          child: SizedBox(
            width: double.infinity,
            height: 250.h,
            child: Image.asset(
              ImageRes.homeContainer,
              fit: BoxFit.cover,
            ),
          ),
        ),

        // Content Overlay
        Positioned.fill(
          child: Column(
            children: [
              SizedBox(height: 10.h),

              // Top Row with Hamburger, Logo, and Search
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Hamburger Icon
                    IconButton(
                      icon: Icon(
                        Icons.menu,
                        color: Colors.white,
                        size: 24.w,
                      ),
                      onPressed: () {
                        // TODO: Implement drawer or menu functionality
                      },
                    ),

                    // Spacer to push logo towards center
                    const Spacer(flex: 1),

                    // Scorers Logo
                    Image.asset(
                      ImageRes.scorers,
                      width: 80.w,
                      height: 30.h,
                    ),

                    // Search Box
                    const HomeSearch(),
                  ],
                ),
              ),

              // Additional Children Below the Row
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // League Icon Selector
                      const LeagueIconSelector(),
                      SizedBox(height: 10.h),

                      // Additional content can go here
                    ],
                  ),
                ),
              ),

              // Tab Bar Consumer
              Consumer(
                builder: (context, ref, child) {
                  // final tabIndex = ref.watch(homeTabIndexProvider);

                  return Container(
                    height: 50.h,
                    color: const Color(0xFF002929),
                    child: TabBar(
                      onTap: (index) {
                        ref.read(homeTabIndexProvider.notifier).changeTab(index);
                      },
                      indicatorColor: const Color(0xFF008F8F),
                      indicatorWeight: 5.0,
                      labelPadding: EdgeInsets.symmetric(vertical: 6.h),
                      labelColor: Colors.white,
                      unselectedLabelColor: const Color(0xFF828282),
                      tabs: const [
                        Tab(text: 'Live Matches'),
                        Tab(text: 'New Matches'),
                        Tab(text: 'Past Matches'),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ],
    ),
  );
}


class HomeSearch extends StatelessWidget {
  const HomeSearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120.w,
      height: 30.h,
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search...',

          hintStyle: const TextStyle(color: Color(0xff828282), ),
          filled: false,
          fillColor: Color(0xff828282),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
                style: BorderStyle.solid, color: Color(0xff828282)),
          ),
          prefixIcon: Icon(
            Icons.search,
            color: const Color(0xff828282),
            size: 20.w,
          ),
        ),
        style: TextStyle(color: Color(0xff828282)),
      ),
    );
  }
}

AppBar matchesBuildAppbar({String title = 'Login'}) {
  return AppBar(
    centerTitle: true,
    toolbarHeight: 350.h,
    backgroundColor: Colors.transparent,
    elevation: 0,
    flexibleSpace: Stack(
      children: [
        // Background Image
        Center(
          child: SizedBox(
            width: double.infinity,
            height: 350.h,
            child: Image.asset(
              ImageRes.matchContainer,
              fit: BoxFit.cover,
            ),
          ),
        ),

        // Content Overlay
        Positioned.fill(
          child: Column(
            children: [
              SizedBox(height: 10.h),
              // Top Row with Hamburger, Logo, and Search
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Back Icon
                    AppImage(
                      imagePath: ImageRes.backIcon,
                      width: 7.37,
                      height: 13.37,
                    ),

                    // Spacer to push logo towards center
                    // const Spacer(flex: 1),

                    // Scorers Logo
                    Text16Normal(
                      color: Colors.white,
                      text: title,
                      fontWeight: FontWeight.w700,
                      fontSize: 22,
                    ),

                    // Bell
                    AppImage(
                      imagePath: ImageRes.bellIcon,
                      width: 16.44,
                      height: 18.5,
                    )
                  ],
                ),
              ),

              SizedBox(height: 10.h),
              // Additional Children Below the Row
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Home Team Column
                      buildTeamColumn(
                        teamLogo: ImageRes.barca,
                        teamName: 'Barcelona',
                        isHome: true,
                        scorers: [
                          {'name': 'R. Lewandowski', 'scoreTime': '11'},
                          {'name': 'J. Felix', 'scoreTime': '25'},
                          {'name': 'J. Cancelo', 'scoreTime': '33'},
                        ]
                      ),

                      // Match Details Column
                      Center(
                        child: Column(
                          children: [
                            Text(
                              '3 - 3',
                              style: TextStyle(
                                fontSize: 32.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.w600
                              ),
                            ),

                            Text(
                              "(4 - 2)\nPenalty",
                              style: TextStyle(
                                fontSize: 14.sp,
                                color: Color(0xFF828282)
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 2.h),

                            AppImage(
                              imagePath: ImageRes.penaltyIcon,
                              width: 13.44.sp,
                              height: 13.44.sp,
                            ),

                            SizedBox(height: 45.h),

                            AppImage(
                              imagePath: ImageRes.liga,
                              width: 24.sp,
                              height: 24.sp,
                            ),
                          ],
                        ),
                      ),

                      // Away Team Column
                      buildTeamColumn(
                        teamLogo: ImageRes.girona,
                        teamName: 'Girona',
                        isHome: false,
                        scorers: [
                          {'name': 'Y. Couto', 'scoreTime': '4'},
                          {'name': 'A. Garcia', 'scoreTime': '15'},
                          {'name': 'l. Martin', 'scoreTime': '27'},
                        ]
                      ),
                    ],
                  ),
                ),
              ),

              // Tab Bar Consumer
              Consumer(
                builder: (context, ref, child) {
                  // final tabIndex = ref.watch(homeTabIndexProvider);

                  return Container(
                    height: 50.h,
                    color: const Color(0xFF002929),
                    child: TabBar(
                      onTap: (index) {
                        ref.read(homeTabIndexProvider.notifier).changeTab(index);
                      },
                      indicatorColor: const Color(0xFF008F8F),
                      indicatorWeight: 5.0,
                      labelPadding: EdgeInsets.symmetric(vertical: 6.h),
                      labelColor: Colors.white,
                      labelStyle: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500
                      ),
                      unselectedLabelColor: const Color(0xFF828282),
                      tabs: const [
                        Tab(text: 'Overview'),
                        Tab(text: 'Line-up'),
                        Tab(text: 'Statistics'),
                        Tab(text: 'Matches'),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ],
    ),
  );
}


Widget buildTeamColumn({
  required String teamLogo,
  required String teamName,
  required bool isHome,
  List<Map<String, dynamic>> scorers = const [],
}) {
  return Column(
    crossAxisAlignment: isHome ? CrossAxisAlignment.start : CrossAxisAlignment.end,
    children: [
      Image.asset(
        teamLogo,
        width: 50.w,
        height: 50.h,
      ),
      SizedBox(height: 4.h),
      Text(
        teamName,
        style: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
        textAlign: isHome ? TextAlign.left : TextAlign.right,
      ),
      if (scorers.isNotEmpty) SizedBox(height: 8.h),
      ...scorers.map((scorer) => Text(
        '${scorer['name']} ${scorer['scoreTime']}',
        style: TextStyle(
          fontSize: 14.sp,
          color: Color(0xFFe0e0e0),
          fontWeight: FontWeight.w400,
        ),
        textAlign: isHome ? TextAlign.left : TextAlign.right,
      )).toList(),
    ],
  );
}