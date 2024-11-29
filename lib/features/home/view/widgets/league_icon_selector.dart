import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:three_scorers/common/utils/image_res.dart';
import 'package:three_scorers/common/widgets/text_widgets.dart';

class LeagueIconSelector extends StatefulWidget {
  const LeagueIconSelector({super.key});

  @override
  _LeagueIconSelectorState createState() => _LeagueIconSelectorState();
}

class _LeagueIconSelectorState extends State<LeagueIconSelector> {
  // List of leagues
  final List<Map<String, dynamic>> leagues = [
    {'id': 'all', 'name': 'All', 'icon': ImageRes.globeIcon},
    {'id': 'epl', 'name': 'EPL', 'icon': ImageRes.eplIcon},
    {'id': 'laliga', 'name': 'LaLiga', 'icon': ImageRes.laligaIcon},
    {'id': 'serieA', 'name': 'Serie A', 'icon': ImageRes.seriaAIcon},
    {'id': 'bundesliga', 'name': 'Bundesliga', 'icon': ImageRes.bundesligaIcon},
    {'id': 'ligue1', 'name': 'Ligue 1', 'icon': ImageRes.ligue1Icon},
  ];

  // Currently active league
  String _activeLeague = 'all';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: leagues.map((league) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _activeLeague = league['id'];
                });
              },
              child: Column(
                children: [
                  Container(
                    width: 50.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                      color: _activeLeague == league['id']
                          ? const Color(0xFF008F8F) // Active color
                          : const Color(0xFF1d1d1d), // Inactive color
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Center(
                      child: SizedBox(
                        width: 30,
                        height: 30,
                        child: Image.asset(
                          league['icon'],
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5.h),
                  Text16Normal(
                      text: league['name'],
                      fontWeight: FontWeight.bold,
                      textAlign: TextAlign.center,
                      fontSize: 14,
                      color: _activeLeague == league['id']
                          ? const Color(0xFFffffff) // Active color
                          : const Color(0xFFbdbdbd),
                  )
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}