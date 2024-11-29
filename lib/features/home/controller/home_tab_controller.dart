import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:three_scorers/common/models/match_entities.dart';
import 'package:three_scorers/common/services/http_util.dart';

part 'home_tab_controller.g.dart';

@riverpod
class HomeTabIndex extends _$HomeTabIndex {
  @override
  int build() {
    return 0; // Default to first tab
  }

  void changeTab(int index) {
    state = index;
  }
}

@riverpod
class MatchesNotifier extends _$MatchesNotifier {
  @override
  FutureOr<MatchEntities> build() async {
    return await fetchMatches();
  }

  Future<MatchEntities> fetchMatches() async {
    try {
      final httpUtil = HttpUtil(baseUrl: '');

      const apiUrl = 'https://webhook.site/015f1c08-705a-4651-b672-56859b10978d';

      final response = await httpUtil.get(apiUrl);

      // Parse the response into your MatchModel
      final matchModel = MatchEntities.fromJson(response);

      return matchModel;
    } on DioException catch (e) {
      // Handle potential network errors
      throw Exception('Failed to load matches: ${e.message}');
    }
  }

  // Method to refresh matches
  Future<void> refreshMatches() async {
    state = const AsyncValue.loading();
    try {
      final matches = await fetchMatches();
      state = AsyncValue.data(matches);
    } catch (error) {
      state = AsyncValue.error(error, StackTrace.current);
    }
  }

  // Helper method to categorize matches
  List<Event> getLiveMatches(MatchEntities matchEntities) {
    return _filterMatches(matchEntities, MatchType.live);
  }

  List<Event> getUpcomingMatches(MatchEntities matchEntities) {
    return _filterMatches(matchEntities, MatchType.upcoming);
  }

  List<Event> getPastMatches(MatchEntities matchEntities) {
    return _filterMatches(matchEntities, MatchType.past);
  }

  List<Event> _filterMatches(MatchEntities? matchEntities, MatchType type) {
    if (matchEntities?.data?.event == null) return [];

    final event = matchEntities!.data!.event!;

    switch (type) {
      case MatchType.live:
        return event.status?.type == 'inprogress' ? [event] : [];
      case MatchType.upcoming:
        return event.status?.type == 'notstarted' ? [event] : [];
      case MatchType.past:
        return event.status?.type == 'finished' ? [event] : [];
    }
  }
}

enum MatchType {
  live,
  upcoming,
  past
}