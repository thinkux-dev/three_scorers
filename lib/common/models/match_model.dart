// class MatchModel {
//   MatchModel({
//     this.success,
//     this.data,
//   });
//
//   MatchModel.fromJson(dynamic json) {
//     success = json['success'];
//     data = json['data'] != null ? Data.fromJson(json['data']) : null;
//   }
//
//   bool? success;
//   Data? data;
//
//   MatchModel copyWith({
//     bool? success,
//     Data? data,
//   }) => MatchModel(
//     success: success ?? this.success,
//     data: data ?? this.data,
//   );
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['success'] = success;
//     if (data != null) {
//       map['data'] = data?.toJson();
//     }
//     return map;
//   }
// }
//
// class Data {
//   Data({
//     this.event,
//     this.season,
//     this.roundInfo,
//     this.status,
//     this.venue,
//     this.referee,
//     this.homeTeam,
//     this.awayTeam,
//     this.homeScore,
//     this.awayScore,
//     this.time,
//     this.changes,
//     this.hasGlobalHighlights,
//     this.hasXg,
//     this.hasEventPlayerStatistics,
//     this.hasEventPlayerHeatMap,
//     this.detailId,
//     this.crowdsourcingDataDisplayEnabled,
//     this.id,
//     this.defaultPeriodCount,
//     this.defaultPeriodLength,
//     this.defaultOvertimeLength,
//     this.currentPeriodStartTimestamp,
//     this.previousLegEventId,
//     this.startTimestamp,
//     this.slug,
//     this.finalResultOnly,
//     this.feedLocked,
//     this.cupMatchesInRound,
//     this.fanRatingEvent,
//     this.seasonStatisticsType,
//     this.showTotoPromo,
//     this.isEditor,
//   });
//
//   Event? event;
//   Season? season;
//   RoundInfo? roundInfo;
//   Status? status;
//   Venue? venue;
//   Referee? referee;
//   Team? homeTeam;
//   Team? awayTeam;
//   Score? homeScore;
//   Score? awayScore;
//   MatchTime? time;
//   List<String>? changes;
//   bool? hasGlobalHighlights;
//   bool? hasXg;
//   bool? hasEventPlayerStatistics;
//   bool? hasEventPlayerHeatMap;
//   int? detailId;
//   bool? crowdsourcingDataDisplayEnabled;
//   int? id;
//   int? defaultPeriodCount;
//   int? defaultPeriodLength;
//   int? defaultOvertimeLength;
//   int? currentPeriodStartTimestamp;
//   int? previousLegEventId;
//   int? startTimestamp;
//   String? slug;
//   bool? finalResultOnly;
//   bool? feedLocked;
//   int? cupMatchesInRound;
//   bool? fanRatingEvent;
//   String? seasonStatisticsType;
//   bool? showTotoPromo;
//   bool? isEditor;
//
//   Data.fromJson(dynamic json) {
//     event = json['event'] != null ? Event.fromJson(json['event']) : null;
//     season = json['season'] != null ? Season.fromJson(json['season']) : null;
//     roundInfo = json['roundInfo'] != null ? RoundInfo.fromJson(json['roundInfo']) : null;
//     status = json['status'] != null ? Status.fromJson(json['status']) : null;
//     venue = json['venue'] != null ? Venue.fromJson(json['venue']) : null;
//     referee = json['referee'] != null ? Referee.fromJson(json['referee']) : null;
//     homeTeam = json['homeTeam'] != null ? Team.fromJson(json['homeTeam']) : null;
//     awayTeam = json['awayTeam'] != null ? Team.fromJson(json['awayTeam']) : null;
//   }
//
//   Data copyWith({
//     Event? event,
//     Season? season,
//     RoundInfo? roundInfo,
//     Status? status,
//     Venue? venue,
//     Referee? referee,
//     Team? homeTeam,
//     Team? awayTeam,
//   }) => Data(
//     event: event ?? this.event,
//     season: season ?? this.season,
//     roundInfo: roundInfo ?? this.roundInfo,
//     status: status ?? this.status,
//     venue: venue ?? this.venue,
//     referee: referee ?? this.referee,
//     homeTeam: homeTeam ?? this.homeTeam,
//     awayTeam: awayTeam ?? this.awayTeam,
//   );
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     if (event != null) {
//       map['event'] = event?.toJson();
//     }
//     if (season != null) {
//       map['season'] = season?.toJson();
//     }
//     if (roundInfo != null) {
//       map['roundInfo'] = roundInfo?.toJson();
//     }
//     if (status != null) {
//       map['status'] = status?.toJson();
//     }
//     if (venue != null) {
//       map['venue'] = venue?.toJson();
//     }
//     if (referee != null) {
//       map['referee'] = referee?.toJson();
//     }
//     if (homeTeam != null) {
//       map['homeTeam'] = homeTeam?.toJson();
//     }
//     if (awayTeam != null) {
//       map['awayTeam'] = awayTeam?.toJson();
//     }
//     return map;
//   }
// }
//
// class Event {
//   Event({
//     this.tournament,
//     this.uniqueTournament,
//     this.priority,
//     this.isGroup,
//     this.competitionType,
//     this.isLive,
//     this.id,
//   });
//
//   Event.fromJson(dynamic json) {
//     tournament = json['tournament'] != null ? Tournament.fromJson(json['tournament']) : null;
//     uniqueTournament = json['uniqueTournament'] != null ? UniqueTournament.fromJson(json['uniqueTournament']) : null;
//     priority = json['priority'];
//     isGroup = json['isGroup'];
//     competitionType = json['competitionType'];
//     isLive = json['isLive'];
//     id = json['id'];
//   }
//
//   Tournament? tournament;
//   UniqueTournament? uniqueTournament;
//   int? priority;
//   bool? isGroup;
//   int? competitionType;
//   bool? isLive;
//   int? id;
//
//   Event copyWith({
//     Tournament? tournament,
//     UniqueTournament? uniqueTournament,
//     int? priority,
//     bool? isGroup,
//     int? competitionType,
//     bool? isLive,
//     int? id,
//   }) => Event(
//     tournament: tournament ?? this.tournament,
//     uniqueTournament: uniqueTournament ?? this.uniqueTournament,
//     priority: priority ?? this.priority,
//     isGroup: isGroup ?? this.isGroup,
//     competitionType: competitionType ?? this.competitionType,
//     isLive: isLive ?? this.isLive,
//     id: id ?? this.id,
//   );
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     if (tournament != null) {
//       map['tournament'] = tournament?.toJson();
//     }
//     if (uniqueTournament != null) {
//       map['uniqueTournament'] = uniqueTournament?.toJson();
//     }
//     map['priority'] = priority;
//     map['isGroup'] = isGroup;
//     map['competitionType'] = competitionType;
//     map['isLive'] = isLive;
//     map['id'] = id;
//     return map;
//   }
// }
//
// // Additional classes (Tournament, UniqueTournament, Season, RoundInfo, Status, Venue, Referee, Team)
// // would be defined similarly with fromJson, toJson, and copyWith methods
//
// class Tournament {
//   Tournament({
//     this.name,
//     this.slug,
//     this.category,
//   });
//
//   Tournament.fromJson(dynamic json) {
//     name = json['name'];
//     slug = json['slug'];
//     category = json['category'] != null ? Category.fromJson(json['category']) : null;
//   }
//
//   String? name;
//   String? slug;
//   Category? category;
//
//   Tournament copyWith({
//     String? name,
//     String? slug,
//     Category? category,
//   }) => Tournament(
//     name: name ?? this.name,
//     slug: slug ?? this.slug,
//     category: category ?? this.category,
//   );
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['name'] = name;
//     map['slug'] = slug;
//     if (category != null) {
//       map['category'] = category?.toJson();
//     }
//     return map;
//   }
// }
//
// class Category {
//   Category({
//     this.name,
//     this.slug,
//     this.sport,
//     this.id,
//     this.country,
//     this.flag,
//   });
//
//   Category.fromJson(dynamic json) {
//     name = json['name'];
//     slug = json['slug'];
//     sport = json['sport'] != null ? Sport.fromJson(json['sport']) : null;
//     id = json['id'];
//     country = json['country'] != null ? Country.fromJson(json['country']) : null;
//     flag = json['flag'];
//   }
//
//   String? name;
//   String? slug;
//   Sport? sport;
//   int? id;
//   Country? country;
//   String? flag;
//
//   Category copyWith({
//     String? name,
//     String? slug,
//     Sport? sport,
//     int? id,
//     Country? country,
//     String? flag,
//   }) => Category(
//     name: name ?? this.name,
//     slug: slug ?? this.slug,
//     sport: sport ?? this.sport,
//     id: id ?? this.id,
//     country: country ?? this.country,
//     flag: flag ?? this.flag,
//   );
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['name'] = name;
//     map['slug'] = slug;
//     if (sport != null) {
//       map['sport'] = sport?.toJson();
//     }
//     map['id'] = id;
//     if (country != null) {
//       map['country'] = country?.toJson();
//     }
//     map['flag'] = flag;
//     return map;
//   }
// }
//
// class Sport {
//   Sport({
//     this.name,
//     this.slug,
//     this.id,
//   });
//
//   Sport.fromJson(dynamic json) {
//     name = json['name'];
//     slug = json['slug'];
//     id = json['id'];
//   }
//
//   String? name;
//   String? slug;
//   int? id;
//
//   Sport copyWith({
//     String? name,
//     String? slug,
//     int? id,
//   }) => Sport(
//     name: name ?? this.name,
//     slug: slug ?? this.slug,
//     id: id ?? this.id,
//   );
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['name'] = name;
//     map['slug'] = slug;
//     map['id'] = id;
//     return map;
//   }
// }
//
// class Country {
//   Country({
//     this.alpha2,
//     this.alpha3,
//     this.name,
//     this.slug,
//   });
//
//   Country.fromJson(dynamic json) {
//     alpha2 = json['alpha2'];
//     alpha3 = json['alpha3'];
//     name = json['name'];
//     slug = json['slug'];
//   }
//
//   String? alpha2;
//   String? alpha3;
//   String? name;
//   String? slug;
//
//   Country copyWith({
//     String? alpha2,
//     String? alpha3,
//     String? name,
//     String? slug,
//   }) => Country(
//     alpha2: alpha2 ?? this.alpha2,
//     alpha3: alpha3 ?? this.alpha3,
//     name: name ?? this.name,
//     slug: slug ?? this.slug,
//   );
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['alpha2'] = alpha2;
//     map['alpha3'] = alpha3;
//     map['name'] = name;
//     map['slug'] = slug;
//     return map;
//   }
// }
//
// class Team {
//   Team({
//     this.name,
//     this.slug,
//     this.shortName,
//     this.gender,
//     this.sport,
//     this.userCount,
//     this.manager,
//     this.venue,
//     this.nameCode,
//     this.fullName,
//     this.teamColors,
//     this.logo,
//   });
//
//   Team.fromJson(dynamic json) {
//     name = json['name'];
//     slug = json['slug'];
//     shortName = json['shortName'];
//     gender = json['gender'];
//     sport = json['sport'] != null ? Sport.fromJson(json['sport']) : null;
//     userCount = json['userCount'];
//     manager = json['manager'] != null ? Manager.fromJson(json['manager']) : null;
//     venue = json['venue'] != null ? Venue.fromJson(json['venue']) : null;
//     nameCode = json['nameCode'];
//     fullName = json['fullName'];
//     teamColors = json['teamColors'] != null ? TeamColors.fromJson(json['teamColors']) : null;
//     logo = json['logo'];
//   }
//
//   String? name;
//   String? slug;
//   String? shortName;
//   String? gender;
//   Sport? sport;
//   int? userCount;
//   Manager? manager;
//   Venue? venue;
//   String? nameCode;
//   String? fullName;
//   TeamColors? teamColors;
//   String? logo;
//
//   Team copyWith({
//     String? name,
//     String? slug,
//     String? shortName,
//     String? gender,
//     Sport? sport,
//     int? userCount,
//     Manager? manager,
//     Venue? venue,
//     String? nameCode,
//     String? fullName,
//     TeamColors? teamColors,
//     String? logo,
//   }) => Team(
//     name: name ?? this.name,
//     slug: slug ?? this.slug,
//     shortName: shortName ?? this.shortName,
//     gender: gender ?? this.gender,
//     sport: sport ?? this.sport,
//     userCount: userCount ?? this.userCount,
//     manager: manager ?? this.manager,
//     venue: venue ?? this.venue,
//     nameCode: nameCode ?? this.nameCode,
//     fullName: fullName ?? this.fullName,
//     teamColors: teamColors ?? this.teamColors,
//     logo: logo ?? this.logo,
//   );
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['name'] = name;
//     map['slug'] = slug;
//     map['shortName'] = shortName;
//     map['gender'] = gender;
//     if (sport != null) {
//       map['sport'] = sport?.toJson();
//     }
//     map['userCount'] = userCount;
//     if (manager != null) {
//       map['manager'] = manager?.toJson();
//     }
//     if (venue != null) {
//       map['venue'] = venue?.toJson();
//     }
//     map['nameCode'] = nameCode;
//     map['fullName'] = fullName;
//     if (teamColors != null) {
//       map['teamColors'] = teamColors?.toJson();
//     }
//     map['logo'] = logo;
//     return map;
//   }
// }
//
// class Manager {
//   Manager({
//     this.name,
//     this.slug,
//     this.shortName,
//     this.id,
//     this.country,
//   });
//
//   Manager.fromJson(dynamic json) {
//     name = json['name'];
//     slug = json['slug'];
//     shortName = json['shortName'];
//     id = json['id'];
//     country = json['country'] != null ? Country.fromJson(json['country']) : null;
//   }
//
//   String? name;
//   String? slug;
//   String? shortName;
//   int? id;
//   Country? country;
//
//   Manager copyWith({
//     String? name,
//     String? slug,
//     String? shortName,
//     int? id,
//     Country? country,
//   }) => Manager(
//     name: name ?? this.name,
//     slug: slug ?? this.slug,
//     shortName: shortName ?? this.shortName,
//     id: id ?? this.id,
//     country: country ?? this.country,
//   );
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['name'] = name;
//     map['slug'] = slug;
//     map['shortName'] = shortName;
//     map['id'] = id;
//     if (country != null) {
//       map['country'] = country?.toJson();
//     }
//     return map;
//   }
// }
//
// class TeamColors {
//   TeamColors({
//     this.primary,
//     this.secondary,
//     this.text,
//   });
//
//   TeamColors.fromJson(dynamic json) {
//     primary = json['primary'];
//     secondary = json['secondary'];
//     text = json['text'];
//   }
//
//   String? primary;
//   String? secondary;
//   String? text;
//
//   TeamColors copyWith({
//     String? primary,
//     String? secondary,
//     String? text,
//   }) => TeamColors(
//     primary: primary ?? this.primary,
//     secondary: secondary ?? this.secondary,
//     text: text ?? this.text,
//   );
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['primary'] = primary;
//     map['secondary'] = secondary;
//     map['text'] = text;
//     return map;
//   }
// }
//
// class Score {
//   Score({
//     this.current,
//     this.display,
//     this.period1,
//     this.period2,
//     this.normaltime,
//     this.extra1,
//     this.extra2,
//     this.overtime,
//     this.penalties,
//     this.aggregated,
//   });
//
//   Score.fromJson(dynamic json) {
//     current = json['current'];
//     display = json['display'];
//     period1 = json['period1'];
//     period2 = json['period2'];
//     normaltime = json['normaltime'];
//     extra1 = json['extra1'];
//     extra2 = json['extra2'];
//     overtime = json['overtime'];
//     penalties = json['penalties'];
//     aggregated = json['aggregated'];
//   }
//
//   int? current;
//   int? display;
//   int? period1;
//   int? period2;
//   int? normaltime;
//   int? extra1;
//   int? extra2;
//   int? overtime;
//   int? penalties;
//   int? aggregated;
//
//   Score copyWith({
//     int? current,
//     int? display,
//     int? period1,
//     int? period2,
//     int? normaltime,
//     int? extra1,
//     int? extra2,
//     int? overtime,
//     int? penalties,
//     int? aggregated,
//   }) => Score(
//     current: current ?? this.current,
//     display: display ?? this.display,
//     period1: period1 ?? this.period1,
//     period2: period2 ?? this.period2,
//     normaltime: normaltime ?? this.normaltime,
//     extra1: extra1 ?? this.extra1,
//     extra2: extra2 ?? this.extra2,
//     overtime: overtime ?? this.overtime,
//     penalties: penalties ?? this.penalties,
//     aggregated: aggregated ?? this.aggregated,
//   );
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['current'] = current;
//     map['display'] = display;
//     map['period1'] = period1;
//     map['period2'] = period2;
//     map['normaltime'] = normaltime;
//     map['extra1'] = extra1;
//     map['extra2'] = extra2;
//     map['overtime'] = overtime;
//     map['penalties'] = penalties;
//     map['aggregated'] = aggregated;
//     return map;
//   }
// }
//
// class MatchTime {
//   MatchTime({
//     this.injuryTime1,
//     this.injuryTime2,
//     this.injuryTime3,
//     this.injuryTime4,
//     this.currentPeriodStartTimestamp,
//   });
//
//   MatchTime.fromJson(dynamic json) {
//     injuryTime1 = json['injuryTime1'];
//     injuryTime2 = json['injuryTime2'];
//     injuryTime3 = json['injuryTime3'];
//     injuryTime4 = json['injuryTime4'];
//     currentPeriodStartTimestamp = json['currentPeriodStartTimestamp'];
//   }
//
//   int? injuryTime1;
//   int? injuryTime2;
//   int? injuryTime3;
//   int? injuryTime4;
//   int? currentPeriodStartTimestamp;
//
//   MatchTime copyWith({
//     int? injuryTime1,
//     int? injuryTime2,
//     int? injuryTime3,
//     int? injuryTime4,
//     int? currentPeriodStartTimestamp,
//   }) => MatchTime(
//     injuryTime1: injuryTime1 ?? this.injuryTime1,
//     injuryTime2: injuryTime2 ?? this.injuryTime2,
//     injuryTime3: injuryTime3 ?? this.injuryTime3,
//     injuryTime4: injuryTime4 ?? this.injuryTime4,
//     currentPeriodStartTimestamp: currentPeriodStartTimestamp ?? this.currentPeriodStartTimestamp,
//   );
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['injuryTime1'] = injuryTime1;
//     map['injuryTime2'] = injuryTime2;
//     map['injuryTime3'] = injuryTime3;
//     map['injuryTime4'] = injuryTime4;
//     map['currentPeriodStartTimestamp'] = currentPeriodStartTimestamp;
//     return map;
//   }
// }
//
// class UniqueTournament {
//   UniqueTournament({
//     this.name,
//     this.slug,
//     this.primaryColorHex,
//     this.secondaryColorHex,
//     this.category,
//     this.userCount,
//     this.id,
//     this.country,
//     this.hasPerformanceGraphFeature,
//     this.hasEventPlayerStatistics,
//     this.displayInverseHomeAwayTeams,
//   });
//
//   UniqueTournament.fromJson(dynamic json) {
//     name = json['name'];
//     slug = json['slug'];
//     primaryColorHex = json['primaryColorHex'];
//     secondaryColorHex = json['secondaryColorHex'];
//     category = json['category'] != null ? Category.fromJson(json['category']) : null;
//     userCount = json['userCount'];
//     id = json['id'];
//     country = json['country'] != null ? Country.fromJson(json['country']) : null;
//     hasPerformanceGraphFeature = json['hasPerformanceGraphFeature'];
//     hasEventPlayerStatistics = json['hasEventPlayerStatistics'];
//     displayInverseHomeAwayTeams = json['displayInverseHomeAwayTeams'];
//   }
//
//   String? name;
//   String? slug;
//   String? primaryColorHex;
//   String? secondaryColorHex;
//   Category? category;
//   int? userCount;
//   int? id;
//   Country? country;
//   bool? hasPerformanceGraphFeature;
//   bool? hasEventPlayerStatistics;
//   bool? displayInverseHomeAwayTeams;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['name'] = name;
//     map['slug'] = slug;
//     map['primaryColorHex'] = primaryColorHex;
//     map['secondaryColorHex'] = secondaryColorHex;
//     if (category != null) map['category'] = category?.toJson();
//     map['userCount'] = userCount;
//     map['id'] = id;
//     if (country != null) map['country'] = country?.toJson();
//     map['hasPerformanceGraphFeature'] = hasPerformanceGraphFeature;
//     map['hasEventPlayerStatistics'] = hasEventPlayerStatistics;
//     map['displayInverseHomeAwayTeams'] = displayInverseHomeAwayTeams;
//     return map;
//   }
// }
//
// class Season {
//   Season({
//     this.name,
//     this.year,
//     this.editor,
//     this.id,
//   });
//
//   Season.fromJson(dynamic json) {
//     name = json['name'];
//     year = json['year'];
//     editor = json['editor'];
//     id = json['id'];
//   }
//
//   String? name;
//   String? year;
//   bool? editor;
//   int? id;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['name'] = name;
//     map['year'] = year;
//     map['editor'] = editor;
//     map['id'] = id;
//     return map;
//   }
// }
//
// class RoundInfo {
//   RoundInfo({
//     this.round,
//     this.name,
//     this.slug,
//     this.cupRoundType,
//   });
//
//   RoundInfo.fromJson(dynamic json) {
//     round = json['round'];
//     name = json['name'];
//     slug = json['slug'];
//     cupRoundType = json['cupRoundType'];
//   }
//
//   int? round;
//   String? name;
//   String? slug;
//   int? cupRoundType;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['round'] = round;
//     map['name'] = name;
//     map['slug'] = slug;
//     map['cupRoundType'] = cupRoundType;
//     return map;
//   }
// }
//
// class Status {
//   Status({
//     this.code,
//     this.description,
//     this.type,
//   });
//
//   Status.fromJson(dynamic json) {
//     code = json['code'];
//     description = json['description'];
//     type = json['type'];
//   }
//
//   int? code;
//   String? description;
//   String? type;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['code'] = code;
//     map['description'] = description;
//     map['type'] = type;
//     return map;
//   }
// }
//
// class Venue {
//   Venue({
//     this.city,
//     this.venueCoordinates,
//     this.hidden,
//     this.slug,
//     this.name,
//     this.capacity,
//     this.id,
//     this.country,
//     this.fieldTranslations,
//     this.stadium,});
//
//   Venue.fromJson(dynamic json) {
//     city = json['city'] != null ? City.fromJson(json['city']) : null;
//     venueCoordinates = json['venueCoordinates'] != null ? VenueCoordinates.fromJson(json['venueCoordinates']) : null;
//     hidden = json['hidden'];
//     slug = json['slug'];
//     name = json['name'];
//     capacity = json['capacity'];
//     id = json['id'];
//     country = json['country'] != null ? Country.fromJson(json['country']) : null;
//     fieldTranslations = json['fieldTranslations'] != null ? FieldTranslations.fromJson(json['fieldTranslations']) : null;
//     stadium = json['stadium'] != null ? Stadium.fromJson(json['stadium']) : null;
//   }
//   City? city;
//   VenueCoordinates? venueCoordinates;
//   bool? hidden;
//   String? slug;
//   String? name;
//   int? capacity;
//   int? id;
//   Country? country;
//   FieldTranslations? fieldTranslations;
//   Stadium? stadium;
//   Venue copyWith({  City? city,
//     VenueCoordinates? venueCoordinates,
//     bool? hidden,
//     String? slug,
//     String? name,
//     int? capacity,
//     int? id,
//     Country? country,
//     FieldTranslations? fieldTranslations,
//     Stadium? stadium,
//   }) => Venue(  city: city ?? this.city,
//     venueCoordinates: venueCoordinates ?? this.venueCoordinates,
//     hidden: hidden ?? this.hidden,
//     slug: slug ?? this.slug,
//     name: name ?? this.name,
//     capacity: capacity ?? this.capacity,
//     id: id ?? this.id,
//     country: country ?? this.country,
//     fieldTranslations: fieldTranslations ?? this.fieldTranslations,
//     stadium: stadium ?? this.stadium,
//   );
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     if (city != null) {
//       map['city'] = city?.toJson();
//     }
//     if (venueCoordinates != null) {
//       map['venueCoordinates'] = venueCoordinates?.toJson();
//     }
//     map['hidden'] = hidden;
//     map['slug'] = slug;
//     map['name'] = name;
//     map['capacity'] = capacity;
//     map['id'] = id;
//     if (country != null) {
//       map['country'] = country?.toJson();
//     }
//     if (fieldTranslations != null) {
//       map['fieldTranslations'] = fieldTranslations?.toJson();
//     }
//     if (stadium != null) {
//       map['stadium'] = stadium?.toJson();
//     }
//     return map;
//   }
//
// }