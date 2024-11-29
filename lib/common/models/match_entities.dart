class MatchEntities {
  MatchEntities({
      this.success, 
      this.data,});

  MatchEntities.fromJson(dynamic json) {
    success = json['success'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  bool? success;
  Data? data;
MatchEntities copyWith({  bool? success,
  Data? data,
}) => MatchEntities(  success: success ?? this.success,
  data: data ?? this.data,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = success;
    if (data != null) {
      map['data'] = data?.toJson();
    }
    return map;
  }

}

class Data {
  Data({
      this.event,});

  Data.fromJson(dynamic json) {
    event = json['event'] != null ? Event.fromJson(json['event']) : null;
  }
  Event? event;
Data copyWith({  Event? event,
}) => Data(  event: event ?? this.event,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (event != null) {
      map['event'] = event?.toJson();
    }
    return map;
  }

}

class Event {
  Event({
      this.tournament,
      this.season,
      this.roundInfo,
      this.customId,
      this.status,
      this.winnerCode,
      this.aggregatedWinnerCode,
      this.venue,
      this.referee,
      this.homeTeam,
      this.awayTeam,
      this.homeScore,
      this.awayScore,
      this.time,
      this.changes,
      this.hasGlobalHighlights,
      this.hasXg,
      this.hasEventPlayerStatistics,
      this.hasEventPlayerHeatMap,
      this.detailId,
      this.crowdsourcingDataDisplayEnabled,
      this.id,
      this.defaultPeriodCount,
      this.defaultPeriodLength,
      this.defaultOvertimeLength,
      this.currentPeriodStartTimestamp,
      this.previousLegEventId,
      this.startTimestamp,
      this.slug,
      this.finalResultOnly,
      this.feedLocked,
      this.cupMatchesInRound,
      this.fanRatingEvent,
      this.seasonStatisticsType,
      this.showTotoPromo,
      this.isEditor,});

  Event.fromJson(dynamic json) {
    tournament = json['tournament'] != null ? Tournament.fromJson(json['tournament']) : null;
    season = json['season'] != null ? Season.fromJson(json['season']) : null;
    roundInfo = json['roundInfo'] != null ? RoundInfo.fromJson(json['roundInfo']) : null;
    customId = json['customId'];
    status = json['status'] != null ? Status.fromJson(json['status']) : null;
    winnerCode = json['winnerCode'];
    aggregatedWinnerCode = json['aggregatedWinnerCode'];
    venue = json['venue'] != null ? Venue.fromJson(json['venue']) : null;
    referee = json['referee'] != null ? Referee.fromJson(json['referee']) : null;
    homeTeam = json['homeTeam'] != null ? HomeTeam.fromJson(json['homeTeam']) : null;
    awayTeam = json['awayTeam'] != null ? AwayTeam.fromJson(json['awayTeam']) : null;
    homeScore = json['homeScore'] != null ? HomeScore.fromJson(json['homeScore']) : null;
    awayScore = json['awayScore'] != null ? AwayScore.fromJson(json['awayScore']) : null;
    time = json['time'] != null ? Time.fromJson(json['time']) : null;
    changes = json['changes'] != null ? Changes.fromJson(json['changes']) : null;
    hasGlobalHighlights = json['hasGlobalHighlights'];
    hasXg = json['hasXg'];
    hasEventPlayerStatistics = json['hasEventPlayerStatistics'];
    hasEventPlayerHeatMap = json['hasEventPlayerHeatMap'];
    detailId = json['detailId'];
    crowdsourcingDataDisplayEnabled = json['crowdsourcingDataDisplayEnabled'];
    id = json['id'];
    defaultPeriodCount = json['defaultPeriodCount'];
    defaultPeriodLength = json['defaultPeriodLength'];
    defaultOvertimeLength = json['defaultOvertimeLength'];
    currentPeriodStartTimestamp = json['currentPeriodStartTimestamp'];
    previousLegEventId = json['previousLegEventId'];
    startTimestamp = json['startTimestamp'];
    slug = json['slug'];
    finalResultOnly = json['finalResultOnly'];
    feedLocked = json['feedLocked'];
    cupMatchesInRound = json['cupMatchesInRound'];
    fanRatingEvent = json['fanRatingEvent'];
    seasonStatisticsType = json['seasonStatisticsType'];
    showTotoPromo = json['showTotoPromo'];
    isEditor = json['isEditor'];
  }
  Tournament? tournament;
  Season? season;
  RoundInfo? roundInfo;
  String? customId;
  Status? status;
  int? winnerCode;
  int? aggregatedWinnerCode;
  Venue? venue;
  Referee? referee;
  HomeTeam? homeTeam;
  AwayTeam? awayTeam;
  HomeScore? homeScore;
  AwayScore? awayScore;
  Time? time;
  Changes? changes;
  bool? hasGlobalHighlights;
  bool? hasXg;
  bool? hasEventPlayerStatistics;
  bool? hasEventPlayerHeatMap;
  int? detailId;
  bool? crowdsourcingDataDisplayEnabled;
  int? id;
  int? defaultPeriodCount;
  int? defaultPeriodLength;
  int? defaultOvertimeLength;
  int? currentPeriodStartTimestamp;
  int? previousLegEventId;
  int? startTimestamp;
  String? slug;
  bool? finalResultOnly;
  bool? feedLocked;
  int? cupMatchesInRound;
  bool? fanRatingEvent;
  String? seasonStatisticsType;
  bool? showTotoPromo;
  bool? isEditor;
Event copyWith({  Tournament? tournament,
  Season? season,
  RoundInfo? roundInfo,
  String? customId,
  Status? status,
  int? winnerCode,
  int? aggregatedWinnerCode,
  Venue? venue,
  Referee? referee,
  HomeTeam? homeTeam,
  AwayTeam? awayTeam,
  HomeScore? homeScore,
  AwayScore? awayScore,
  Time? time,
  Changes? changes,
  bool? hasGlobalHighlights,
  bool? hasXg,
  bool? hasEventPlayerStatistics,
  bool? hasEventPlayerHeatMap,
  int? detailId,
  bool? crowdsourcingDataDisplayEnabled,
  int? id,
  int? defaultPeriodCount,
  int? defaultPeriodLength,
  int? defaultOvertimeLength,
  int? currentPeriodStartTimestamp,
  int? previousLegEventId,
  int? startTimestamp,
  String? slug,
  bool? finalResultOnly,
  bool? feedLocked,
  int? cupMatchesInRound,
  bool? fanRatingEvent,
  String? seasonStatisticsType,
  bool? showTotoPromo,
  bool? isEditor,
}) => Event(  tournament: tournament ?? this.tournament,
  season: season ?? this.season,
  roundInfo: roundInfo ?? this.roundInfo,
  customId: customId ?? this.customId,
  status: status ?? this.status,
  winnerCode: winnerCode ?? this.winnerCode,
  aggregatedWinnerCode: aggregatedWinnerCode ?? this.aggregatedWinnerCode,
  venue: venue ?? this.venue,
  referee: referee ?? this.referee,
  homeTeam: homeTeam ?? this.homeTeam,
  awayTeam: awayTeam ?? this.awayTeam,
  homeScore: homeScore ?? this.homeScore,
  awayScore: awayScore ?? this.awayScore,
  time: time ?? this.time,
  changes: changes ?? this.changes,
  hasGlobalHighlights: hasGlobalHighlights ?? this.hasGlobalHighlights,
  hasXg: hasXg ?? this.hasXg,
  hasEventPlayerStatistics: hasEventPlayerStatistics ?? this.hasEventPlayerStatistics,
  hasEventPlayerHeatMap: hasEventPlayerHeatMap ?? this.hasEventPlayerHeatMap,
  detailId: detailId ?? this.detailId,
  crowdsourcingDataDisplayEnabled: crowdsourcingDataDisplayEnabled ?? this.crowdsourcingDataDisplayEnabled,
  id: id ?? this.id,
  defaultPeriodCount: defaultPeriodCount ?? this.defaultPeriodCount,
  defaultPeriodLength: defaultPeriodLength ?? this.defaultPeriodLength,
  defaultOvertimeLength: defaultOvertimeLength ?? this.defaultOvertimeLength,
  currentPeriodStartTimestamp: currentPeriodStartTimestamp ?? this.currentPeriodStartTimestamp,
  previousLegEventId: previousLegEventId ?? this.previousLegEventId,
  startTimestamp: startTimestamp ?? this.startTimestamp,
  slug: slug ?? this.slug,
  finalResultOnly: finalResultOnly ?? this.finalResultOnly,
  feedLocked: feedLocked ?? this.feedLocked,
  cupMatchesInRound: cupMatchesInRound ?? this.cupMatchesInRound,
  fanRatingEvent: fanRatingEvent ?? this.fanRatingEvent,
  seasonStatisticsType: seasonStatisticsType ?? this.seasonStatisticsType,
  showTotoPromo: showTotoPromo ?? this.showTotoPromo,
  isEditor: isEditor ?? this.isEditor,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (tournament != null) {
      map['tournament'] = tournament?.toJson();
    }
    if (season != null) {
      map['season'] = season?.toJson();
    }
    if (roundInfo != null) {
      map['roundInfo'] = roundInfo?.toJson();
    }
    map['customId'] = customId;
    if (status != null) {
      map['status'] = status?.toJson();
    }
    map['winnerCode'] = winnerCode;
    map['aggregatedWinnerCode'] = aggregatedWinnerCode;
    if (venue != null) {
      map['venue'] = venue?.toJson();
    }
    if (referee != null) {
      map['referee'] = referee?.toJson();
    }
    if (homeTeam != null) {
      map['homeTeam'] = homeTeam?.toJson();
    }
    if (awayTeam != null) {
      map['awayTeam'] = awayTeam?.toJson();
    }
    if (homeScore != null) {
      map['homeScore'] = homeScore?.toJson();
    }
    if (awayScore != null) {
      map['awayScore'] = awayScore?.toJson();
    }
    if (time != null) {
      map['time'] = time?.toJson();
    }
    if (changes != null) {
      map['changes'] = changes?.toJson();
    }
    map['hasGlobalHighlights'] = hasGlobalHighlights;
    map['hasXg'] = hasXg;
    map['hasEventPlayerStatistics'] = hasEventPlayerStatistics;
    map['hasEventPlayerHeatMap'] = hasEventPlayerHeatMap;
    map['detailId'] = detailId;
    map['crowdsourcingDataDisplayEnabled'] = crowdsourcingDataDisplayEnabled;
    map['id'] = id;
    map['defaultPeriodCount'] = defaultPeriodCount;
    map['defaultPeriodLength'] = defaultPeriodLength;
    map['defaultOvertimeLength'] = defaultOvertimeLength;
    map['currentPeriodStartTimestamp'] = currentPeriodStartTimestamp;
    map['previousLegEventId'] = previousLegEventId;
    map['startTimestamp'] = startTimestamp;
    map['slug'] = slug;
    map['finalResultOnly'] = finalResultOnly;
    map['feedLocked'] = feedLocked;
    map['cupMatchesInRound'] = cupMatchesInRound;
    map['fanRatingEvent'] = fanRatingEvent;
    map['seasonStatisticsType'] = seasonStatisticsType;
    map['showTotoPromo'] = showTotoPromo;
    map['isEditor'] = isEditor;
    return map;
  }

}

class Changes {
  Changes({
      this.changes, 
      this.changeTimestamp,});

  Changes.fromJson(dynamic json) {
    changes = json['changes'] != null ? json['changes'].cast<String>() : [];
    changeTimestamp = json['changeTimestamp'];
  }
  List<String>? changes;
  int? changeTimestamp;
Changes copyWith({  List<String>? changes,
  int? changeTimestamp,
}) => Changes(  changes: changes ?? this.changes,
  changeTimestamp: changeTimestamp ?? this.changeTimestamp,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['changes'] = changes;
    map['changeTimestamp'] = changeTimestamp;
    return map;
  }

}

class Time {
  Time({
      this.injuryTime1, 
      this.injuryTime2, 
      this.injuryTime3, 
      this.injuryTime4, 
      this.currentPeriodStartTimestamp,});

  Time.fromJson(dynamic json) {
    injuryTime1 = json['injuryTime1'];
    injuryTime2 = json['injuryTime2'];
    injuryTime3 = json['injuryTime3'];
    injuryTime4 = json['injuryTime4'];
    currentPeriodStartTimestamp = json['currentPeriodStartTimestamp'];
  }
  int? injuryTime1;
  int? injuryTime2;
  int? injuryTime3;
  int? injuryTime4;
  int? currentPeriodStartTimestamp;
Time copyWith({  int? injuryTime1,
  int? injuryTime2,
  int? injuryTime3,
  int? injuryTime4,
  int? currentPeriodStartTimestamp,
}) => Time(  injuryTime1: injuryTime1 ?? this.injuryTime1,
  injuryTime2: injuryTime2 ?? this.injuryTime2,
  injuryTime3: injuryTime3 ?? this.injuryTime3,
  injuryTime4: injuryTime4 ?? this.injuryTime4,
  currentPeriodStartTimestamp: currentPeriodStartTimestamp ?? this.currentPeriodStartTimestamp,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['injuryTime1'] = injuryTime1;
    map['injuryTime2'] = injuryTime2;
    map['injuryTime3'] = injuryTime3;
    map['injuryTime4'] = injuryTime4;
    map['currentPeriodStartTimestamp'] = currentPeriodStartTimestamp;
    return map;
  }

}

class AwayScore {
  AwayScore({
      this.current, 
      this.display, 
      this.period1, 
      this.period2, 
      this.normaltime, 
      this.extra1, 
      this.extra2, 
      this.overtime, 
      this.penalties, 
      this.aggregated,});

  AwayScore.fromJson(dynamic json) {
    current = json['current'];
    display = json['display'];
    period1 = json['period1'];
    period2 = json['period2'];
    normaltime = json['normaltime'];
    extra1 = json['extra1'];
    extra2 = json['extra2'];
    overtime = json['overtime'];
    penalties = json['penalties'];
    aggregated = json['aggregated'];
  }
  int? current;
  int? display;
  int? period1;
  int? period2;
  int? normaltime;
  int? extra1;
  int? extra2;
  int? overtime;
  int? penalties;
  int? aggregated;
AwayScore copyWith({  int? current,
  int? display,
  int? period1,
  int? period2,
  int? normaltime,
  int? extra1,
  int? extra2,
  int? overtime,
  int? penalties,
  int? aggregated,
}) => AwayScore(  current: current ?? this.current,
  display: display ?? this.display,
  period1: period1 ?? this.period1,
  period2: period2 ?? this.period2,
  normaltime: normaltime ?? this.normaltime,
  extra1: extra1 ?? this.extra1,
  extra2: extra2 ?? this.extra2,
  overtime: overtime ?? this.overtime,
  penalties: penalties ?? this.penalties,
  aggregated: aggregated ?? this.aggregated,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['current'] = current;
    map['display'] = display;
    map['period1'] = period1;
    map['period2'] = period2;
    map['normaltime'] = normaltime;
    map['extra1'] = extra1;
    map['extra2'] = extra2;
    map['overtime'] = overtime;
    map['penalties'] = penalties;
    map['aggregated'] = aggregated;
    return map;
  }

}

class HomeScore {
  HomeScore({
      this.current, 
      this.display, 
      this.period1, 
      this.period2, 
      this.normaltime, 
      this.extra1, 
      this.extra2, 
      this.overtime, 
      this.penalties, 
      this.aggregated,});

  HomeScore.fromJson(dynamic json) {
    current = json['current'];
    display = json['display'];
    period1 = json['period1'];
    period2 = json['period2'];
    normaltime = json['normaltime'];
    extra1 = json['extra1'];
    extra2 = json['extra2'];
    overtime = json['overtime'];
    penalties = json['penalties'];
    aggregated = json['aggregated'];
  }
  int? current;
  int? display;
  int? period1;
  int? period2;
  int? normaltime;
  int? extra1;
  int? extra2;
  int? overtime;
  int? penalties;
  int? aggregated;
HomeScore copyWith({  int? current,
  int? display,
  int? period1,
  int? period2,
  int? normaltime,
  int? extra1,
  int? extra2,
  int? overtime,
  int? penalties,
  int? aggregated,
}) => HomeScore(  current: current ?? this.current,
  display: display ?? this.display,
  period1: period1 ?? this.period1,
  period2: period2 ?? this.period2,
  normaltime: normaltime ?? this.normaltime,
  extra1: extra1 ?? this.extra1,
  extra2: extra2 ?? this.extra2,
  overtime: overtime ?? this.overtime,
  penalties: penalties ?? this.penalties,
  aggregated: aggregated ?? this.aggregated,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['current'] = current;
    map['display'] = display;
    map['period1'] = period1;
    map['period2'] = period2;
    map['normaltime'] = normaltime;
    map['extra1'] = extra1;
    map['extra2'] = extra2;
    map['overtime'] = overtime;
    map['penalties'] = penalties;
    map['aggregated'] = aggregated;
    return map;
  }

}

class AwayTeam {
  AwayTeam({
      this.name, 
      this.slug, 
      this.shortName, 
      this.gender, 
      this.sport, 
      this.userCount, 
      this.manager, 
      this.venue, 
      this.nameCode, 
      this.classData, 
      this.disabled, 
      this.national, 
      this.type, 
      this.id, 
      this.country, 
      this.subTeams, 
      this.fullName, 
      this.teamColors, 
      this.foundationDateTimestamp, 
      this.fieldTranslations, 
      this.logo,});

  AwayTeam.fromJson(dynamic json) {
    name = json['name'];
    slug = json['slug'];
    shortName = json['shortName'];
    gender = json['gender'];
    sport = json['sport'] != null ? Sport.fromJson(json['sport']) : null;
    userCount = json['userCount'];
    manager = json['manager'] != null ? Manager.fromJson(json['manager']) : null;
    venue = json['venue'] != null ? Venue.fromJson(json['venue']) : null;
    nameCode = json['nameCode'];
    classData = json['classData'];
    disabled = json['disabled'];
    national = json['national'];
    type = json['type'];
    id = json['id'];
    country = json['country'] != null ? Country.fromJson(json['country']) : null;
    if (json['subTeams'] != null) {
      subTeams = [];
      json['subTeams'].forEach((v) {
        subTeams?.add(v);
      });
    }
    fullName = json['fullName'];
    teamColors = json['teamColors'] != null ? TeamColors.fromJson(json['teamColors']) : null;
    foundationDateTimestamp = json['foundationDateTimestamp'];
    fieldTranslations = json['fieldTranslations'] != null ? FieldTranslations.fromJson(json['fieldTranslations']) : null;
    logo = json['logo'];
  }
  String? name;
  String? slug;
  String? shortName;
  String? gender;
  Sport? sport;
  int? userCount;
  Manager? manager;
  Venue? venue;
  String? nameCode;
  int? classData;
  bool? disabled;
  bool? national;
  int? type;
  int? id;
  Country? country;
  List<dynamic>? subTeams;
  String? fullName;
  TeamColors? teamColors;
  int? foundationDateTimestamp;
  FieldTranslations? fieldTranslations;
  String? logo;
AwayTeam copyWith({  String? name,
  String? slug,
  String? shortName,
  String? gender,
  Sport? sport,
  int? userCount,
  Manager? manager,
  Venue? venue,
  String? nameCode,
  int? classData,
  bool? disabled,
  bool? national,
  int? type,
  int? id,
  Country? country,
  List<dynamic>? subTeams,
  String? fullName,
  TeamColors? teamColors,
  int? foundationDateTimestamp,
  FieldTranslations? fieldTranslations,
  String? logo,
}) => AwayTeam(  name: name ?? this.name,
  slug: slug ?? this.slug,
  shortName: shortName ?? this.shortName,
  gender: gender ?? this.gender,
  sport: sport ?? this.sport,
  userCount: userCount ?? this.userCount,
  manager: manager ?? this.manager,
  venue: venue ?? this.venue,
  nameCode: nameCode ?? this.nameCode,
  classData: classData ?? this.classData,
  disabled: disabled ?? this.disabled,
  national: national ?? this.national,
  type: type ?? this.type,
  id: id ?? this.id,
  country: country ?? this.country,
  subTeams: subTeams ?? this.subTeams,
  fullName: fullName ?? this.fullName,
  teamColors: teamColors ?? this.teamColors,
  foundationDateTimestamp: foundationDateTimestamp ?? this.foundationDateTimestamp,
  fieldTranslations: fieldTranslations ?? this.fieldTranslations,
  logo: logo ?? this.logo,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['slug'] = slug;
    map['shortName'] = shortName;
    map['gender'] = gender;
    if (sport != null) {
      map['sport'] = sport?.toJson();
    }
    map['userCount'] = userCount;
    if (manager != null) {
      map['manager'] = manager?.toJson();
    }
    if (venue != null) {
      map['venue'] = venue?.toJson();
    }
    map['nameCode'] = nameCode;
    map['classData'] = classData;
    map['disabled'] = disabled;
    map['national'] = national;
    map['type'] = type;
    map['id'] = id;
    if (country != null) {
      map['country'] = country?.toJson();
    }
    if (subTeams != null) {
      map['subTeams'] = subTeams?.map((v) => v.toJson()).toList();
    }
    map['fullName'] = fullName;
    if (teamColors != null) {
      map['teamColors'] = teamColors?.toJson();
    }
    map['foundationDateTimestamp'] = foundationDateTimestamp;
    if (fieldTranslations != null) {
      map['fieldTranslations'] = fieldTranslations?.toJson();
    }
    map['logo'] = logo;
    return map;
  }

}

class FieldTranslations {
  FieldTranslations({
      this.nameTranslation, 
      this.shortNameTranslation,});

  FieldTranslations.fromJson(dynamic json) {
    nameTranslation = json['nameTranslation'] != null ? NameTranslation.fromJson(json['nameTranslation']) : null;
    shortNameTranslation = json['shortNameTranslation'];
  }
  NameTranslation? nameTranslation;
  dynamic shortNameTranslation;
FieldTranslations copyWith({  NameTranslation? nameTranslation,
  dynamic shortNameTranslation,
}) => FieldTranslations(  nameTranslation: nameTranslation ?? this.nameTranslation,
  shortNameTranslation: shortNameTranslation ?? this.shortNameTranslation,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (nameTranslation != null) {
      map['nameTranslation'] = nameTranslation?.toJson();
    }
    map['shortNameTranslation'] = shortNameTranslation;
    return map;
  }

}

class NameTranslation {
  NameTranslation({
      this.ar, 
      this.ru,});

  NameTranslation.fromJson(dynamic json) {
    ar = json['ar'];
    ru = json['ru'];
  }
  String? ar;
  String? ru;
NameTranslation copyWith({  String? ar,
  String? ru,
}) => NameTranslation(  ar: ar ?? this.ar,
  ru: ru ?? this.ru,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['ar'] = ar;
    map['ru'] = ru;
    return map;
  }

}

class TeamColors {
  TeamColors({
      this.primary, 
      this.secondary, 
      this.text,});

  TeamColors.fromJson(dynamic json) {
    primary = json['primary'];
    secondary = json['secondary'];
    text = json['text'];
  }
  String? primary;
  String? secondary;
  String? text;
TeamColors copyWith({  String? primary,
  String? secondary,
  String? text,
}) => TeamColors(  primary: primary ?? this.primary,
  secondary: secondary ?? this.secondary,
  text: text ?? this.text,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['primary'] = primary;
    map['secondary'] = secondary;
    map['text'] = text;
    return map;
  }

}

class Country {
  Country({
      this.alpha2, 
      this.alpha3, 
      this.name, 
      this.slug,});

  Country.fromJson(dynamic json) {
    alpha2 = json['alpha2'];
    alpha3 = json['alpha3'];
    name = json['name'];
    slug = json['slug'];
  }
  String? alpha2;
  String? alpha3;
  String? name;
  String? slug;
Country copyWith({  String? alpha2,
  String? alpha3,
  String? name,
  String? slug,
}) => Country(  alpha2: alpha2 ?? this.alpha2,
  alpha3: alpha3 ?? this.alpha3,
  name: name ?? this.name,
  slug: slug ?? this.slug,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['alpha2'] = alpha2;
    map['alpha3'] = alpha3;
    map['name'] = name;
    map['slug'] = slug;
    return map;
  }

}

class Venue {
  Venue({
      this.city, 
      this.venueCoordinates, 
      this.hidden, 
      this.slug, 
      this.name, 
      this.capacity, 
      this.id, 
      this.country, 
      this.fieldTranslations, 
      this.stadium,});

  Venue.fromJson(dynamic json) {
    city = json['city'] != null ? City.fromJson(json['city']) : null;
    venueCoordinates = json['venueCoordinates'] != null ? VenueCoordinates.fromJson(json['venueCoordinates']) : null;
    hidden = json['hidden'];
    slug = json['slug'];
    name = json['name'];
    capacity = json['capacity'];
    id = json['id'];
    country = json['country'] != null ? Country.fromJson(json['country']) : null;
    fieldTranslations = json['fieldTranslations'] != null ? FieldTranslations.fromJson(json['fieldTranslations']) : null;
    stadium = json['stadium'] != null ? Stadium.fromJson(json['stadium']) : null;
  }
  City? city;
  VenueCoordinates? venueCoordinates;
  bool? hidden;
  String? slug;
  String? name;
  int? capacity;
  int? id;
  Country? country;
  FieldTranslations? fieldTranslations;
  Stadium? stadium;
Venue copyWith({  City? city,
  VenueCoordinates? venueCoordinates,
  bool? hidden,
  String? slug,
  String? name,
  int? capacity,
  int? id,
  Country? country,
  FieldTranslations? fieldTranslations,
  Stadium? stadium,
}) => Venue(  city: city ?? this.city,
  venueCoordinates: venueCoordinates ?? this.venueCoordinates,
  hidden: hidden ?? this.hidden,
  slug: slug ?? this.slug,
  name: name ?? this.name,
  capacity: capacity ?? this.capacity,
  id: id ?? this.id,
  country: country ?? this.country,
  fieldTranslations: fieldTranslations ?? this.fieldTranslations,
  stadium: stadium ?? this.stadium,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (city != null) {
      map['city'] = city?.toJson();
    }
    if (venueCoordinates != null) {
      map['venueCoordinates'] = venueCoordinates?.toJson();
    }
    map['hidden'] = hidden;
    map['slug'] = slug;
    map['name'] = name;
    map['capacity'] = capacity;
    map['id'] = id;
    if (country != null) {
      map['country'] = country?.toJson();
    }
    if (fieldTranslations != null) {
      map['fieldTranslations'] = fieldTranslations?.toJson();
    }
    if (stadium != null) {
      map['stadium'] = stadium?.toJson();
    }
    return map;
  }

}

class Stadium {
  Stadium({
      this.name, 
      this.capacity,});

  Stadium.fromJson(dynamic json) {
    name = json['name'];
    capacity = json['capacity'];
  }
  String? name;
  int? capacity;
Stadium copyWith({  String? name,
  int? capacity,
}) => Stadium(  name: name ?? this.name,
  capacity: capacity ?? this.capacity,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['capacity'] = capacity;
    return map;
  }

}

class VenueCoordinates {
  VenueCoordinates({
      this.latitude, 
      this.longitude,});

  VenueCoordinates.fromJson(dynamic json) {
    latitude = json['latitude'];
    longitude = json['longitude'];
  }
  double? latitude;
  double? longitude;
VenueCoordinates copyWith({  double? latitude,
  double? longitude,
}) => VenueCoordinates(  latitude: latitude ?? this.latitude,
  longitude: longitude ?? this.longitude,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['latitude'] = latitude;
    map['longitude'] = longitude;
    return map;
  }

}

class City {
  City({
      this.name,});

  City.fromJson(dynamic json) {
    name = json['name'];
  }
  String? name;
City copyWith({  String? name,
}) => City(  name: name ?? this.name,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

}

class Manager {
  Manager({
      this.name, 
      this.slug, 
      this.shortName, 
      this.id, 
      this.country, 
      this.fieldTranslations,});

  Manager.fromJson(dynamic json) {
    name = json['name'];
    slug = json['slug'];
    shortName = json['shortName'];
    id = json['id'];
    country = json['country'] != null ? Country.fromJson(json['country']) : null;
    fieldTranslations = json['fieldTranslations'] != null ? FieldTranslations.fromJson(json['fieldTranslations']) : null;
  }
  String? name;
  String? slug;
  String? shortName;
  int? id;
  Country? country;
  FieldTranslations? fieldTranslations;
Manager copyWith({  String? name,
  String? slug,
  String? shortName,
  int? id,
  Country? country,
  FieldTranslations? fieldTranslations,
}) => Manager(  name: name ?? this.name,
  slug: slug ?? this.slug,
  shortName: shortName ?? this.shortName,
  id: id ?? this.id,
  country: country ?? this.country,
  fieldTranslations: fieldTranslations ?? this.fieldTranslations,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['slug'] = slug;
    map['shortName'] = shortName;
    map['id'] = id;
    if (country != null) {
      map['country'] = country?.toJson();
    }
    if (fieldTranslations != null) {
      map['fieldTranslations'] = fieldTranslations?.toJson();
    }
    return map;
  }

}

class ShortNameTranslation {
  ShortNameTranslation({
      this.ar,});

  ShortNameTranslation.fromJson(dynamic json) {
    ar = json['ar'];
  }
  String? ar;
ShortNameTranslation copyWith({  String? ar,
}) => ShortNameTranslation(  ar: ar ?? this.ar,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['ar'] = ar;
    return map;
  }

}

class Sport {
  Sport({
      this.name, 
      this.slug, 
      this.id,});

  Sport.fromJson(dynamic json) {
    name = json['name'];
    slug = json['slug'];
    id = json['id'];
  }
  String? name;
  String? slug;
  int? id;
Sport copyWith({  String? name,
  String? slug,
  int? id,
}) => Sport(  name: name ?? this.name,
  slug: slug ?? this.slug,
  id: id ?? this.id,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['slug'] = slug;
    map['id'] = id;
    return map;
  }

}

class HomeTeam {
  HomeTeam({
      this.name, 
      this.slug, 
      this.shortName, 
      this.gender, 
      this.sport, 
      this.userCount, 
      this.manager, 
      this.venue, 
      this.nameCode, 
      this.classData, 
      this.disabled, 
      this.national, 
      this.type, 
      this.id, 
      this.country, 
      this.subTeams, 
      this.fullName, 
      this.teamColors, 
      this.foundationDateTimestamp, 
      this.fieldTranslations, 
      this.logo,});

  HomeTeam.fromJson(dynamic json) {
    name = json['name'];
    slug = json['slug'];
    shortName = json['shortName'];
    gender = json['gender'];
    sport = json['sport'] != null ? Sport.fromJson(json['sport']) : null;
    userCount = json['userCount'];
    manager = json['manager'] != null ? Manager.fromJson(json['manager']) : null;
    venue = json['venue'] != null ? Venue.fromJson(json['venue']) : null;
    nameCode = json['nameCode'];
    classData = json['classData'];
    disabled = json['disabled'];
    national = json['national'];
    type = json['type'];
    id = json['id'];
    country = json['country'] != null ? Country.fromJson(json['country']) : null;
    if (json['subTeams'] != null) {
      subTeams = [];
      json['subTeams'].forEach((v) {
        subTeams?.add(v);
      });
    }
    fullName = json['fullName'];
    teamColors = json['teamColors'] != null ? TeamColors.fromJson(json['teamColors']) : null;
    foundationDateTimestamp = json['foundationDateTimestamp'];
    fieldTranslations = json['fieldTranslations'] != null ? FieldTranslations.fromJson(json['fieldTranslations']) : null;
    logo = json['logo'];
  }
  String? name;
  String? slug;
  String? shortName;
  String? gender;
  Sport? sport;
  int? userCount;
  Manager? manager;
  Venue? venue;
  String? nameCode;
  int? classData;
  bool? disabled;
  bool? national;
  int? type;
  int? id;
  Country? country;
  List<dynamic>? subTeams;
  String? fullName;
  TeamColors? teamColors;
  int? foundationDateTimestamp;
  FieldTranslations? fieldTranslations;
  String? logo;
HomeTeam copyWith({  String? name,
  String? slug,
  String? shortName,
  String? gender,
  Sport? sport,
  int? userCount,
  Manager? manager,
  Venue? venue,
  String? nameCode,
  int? classData,
  bool? disabled,
  bool? national,
  int? type,
  int? id,
  Country? country,
  List<dynamic>? subTeams,
  String? fullName,
  TeamColors? teamColors,
  int? foundationDateTimestamp,
  FieldTranslations? fieldTranslations,
  String? logo,
}) => HomeTeam(  name: name ?? this.name,
  slug: slug ?? this.slug,
  shortName: shortName ?? this.shortName,
  gender: gender ?? this.gender,
  sport: sport ?? this.sport,
  userCount: userCount ?? this.userCount,
  manager: manager ?? this.manager,
  venue: venue ?? this.venue,
  nameCode: nameCode ?? this.nameCode,
  classData: classData ?? this.classData,
  disabled: disabled ?? this.disabled,
  national: national ?? this.national,
  type: type ?? this.type,
  id: id ?? this.id,
  country: country ?? this.country,
  subTeams: subTeams ?? this.subTeams,
  fullName: fullName ?? this.fullName,
  teamColors: teamColors ?? this.teamColors,
  foundationDateTimestamp: foundationDateTimestamp ?? this.foundationDateTimestamp,
  fieldTranslations: fieldTranslations ?? this.fieldTranslations,
  logo: logo ?? this.logo,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['slug'] = slug;
    map['shortName'] = shortName;
    map['gender'] = gender;
    if (sport != null) {
      map['sport'] = sport?.toJson();
    }
    map['userCount'] = userCount;
    if (manager != null) {
      map['manager'] = manager?.toJson();
    }
    if (venue != null) {
      map['venue'] = venue?.toJson();
    }
    map['nameCode'] = nameCode;
    map['classData'] = classData;
    map['disabled'] = disabled;
    map['national'] = national;
    map['type'] = type;
    map['id'] = id;
    if (country != null) {
      map['country'] = country?.toJson();
    }
    if (subTeams != null) {
      map['subTeams'] = subTeams?.map((v) => v.toJson()).toList();
    }
    map['fullName'] = fullName;
    if (teamColors != null) {
      map['teamColors'] = teamColors?.toJson();
    }
    map['foundationDateTimestamp'] = foundationDateTimestamp;
    if (fieldTranslations != null) {
      map['fieldTranslations'] = fieldTranslations?.toJson();
    }
    map['logo'] = logo;
    return map;
  }

}

class Referee {
  Referee({
      this.name, 
      this.slug, 
      this.yellowCards, 
      this.redCards, 
      this.yellowRedCards, 
      this.games, 
      this.sport, 
      this.id, 
      this.country,});

  Referee.fromJson(dynamic json) {
    name = json['name'];
    slug = json['slug'];
    yellowCards = json['yellowCards'];
    redCards = json['redCards'];
    yellowRedCards = json['yellowRedCards'];
    games = json['games'];
    sport = json['sport'] != null ? Sport.fromJson(json['sport']) : null;
    id = json['id'];
    country = json['country'] != null ? Country.fromJson(json['country']) : null;
  }
  String? name;
  String? slug;
  int? yellowCards;
  int? redCards;
  int? yellowRedCards;
  int? games;
  Sport? sport;
  int? id;
  Country? country;
Referee copyWith({  String? name,
  String? slug,
  int? yellowCards,
  int? redCards,
  int? yellowRedCards,
  int? games,
  Sport? sport,
  int? id,
  Country? country,
}) => Referee(  name: name ?? this.name,
  slug: slug ?? this.slug,
  yellowCards: yellowCards ?? this.yellowCards,
  redCards: redCards ?? this.redCards,
  yellowRedCards: yellowRedCards ?? this.yellowRedCards,
  games: games ?? this.games,
  sport: sport ?? this.sport,
  id: id ?? this.id,
  country: country ?? this.country,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['slug'] = slug;
    map['yellowCards'] = yellowCards;
    map['redCards'] = redCards;
    map['yellowRedCards'] = yellowRedCards;
    map['games'] = games;
    if (sport != null) {
      map['sport'] = sport?.toJson();
    }
    map['id'] = id;
    if (country != null) {
      map['country'] = country?.toJson();
    }
    return map;
  }

}

class Status {
  Status({
      this.code, 
      this.description, 
      this.type,});

  Status.fromJson(dynamic json) {
    code = json['code'];
    description = json['description'];
    type = json['type'];
  }
  int? code;
  String? description;
  String? type;
Status copyWith({  int? code,
  String? description,
  String? type,
}) => Status(  code: code ?? this.code,
  description: description ?? this.description,
  type: type ?? this.type,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['code'] = code;
    map['description'] = description;
    map['type'] = type;
    return map;
  }

}

class RoundInfo {
  RoundInfo({
      this.round, 
      this.name, 
      this.slug, 
      this.cupRoundType,});

  RoundInfo.fromJson(dynamic json) {
    round = json['round'];
    name = json['name'];
    slug = json['slug'];
    cupRoundType = json['cupRoundType'];
  }
  int? round;
  String? name;
  String? slug;
  int? cupRoundType;
RoundInfo copyWith({  int? round,
  String? name,
  String? slug,
  int? cupRoundType,
}) => RoundInfo(  round: round ?? this.round,
  name: name ?? this.name,
  slug: slug ?? this.slug,
  cupRoundType: cupRoundType ?? this.cupRoundType,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['round'] = round;
    map['name'] = name;
    map['slug'] = slug;
    map['cupRoundType'] = cupRoundType;
    return map;
  }

}

class Season {
  Season({
      this.name, 
      this.year, 
      this.editor, 
      this.seasonCoverageInfo, 
      this.id,});

  Season.fromJson(dynamic json) {
    name = json['name'];
    year = json['year'];
    editor = json['editor'];
    seasonCoverageInfo = json['seasonCoverageInfo'];
    id = json['id'];
  }
  String? name;
  String? year;
  bool? editor;
  dynamic seasonCoverageInfo;
  int? id;
Season copyWith({  String? name,
  String? year,
  bool? editor,
  dynamic seasonCoverageInfo,
  int? id,
}) => Season(  name: name ?? this.name,
  year: year ?? this.year,
  editor: editor ?? this.editor,
  seasonCoverageInfo: seasonCoverageInfo ?? this.seasonCoverageInfo,
  id: id ?? this.id,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['year'] = year;
    map['editor'] = editor;
    map['seasonCoverageInfo'] = seasonCoverageInfo;
    map['id'] = id;
    return map;
  }

}

class Tournament {
  Tournament({
      this.name, 
      this.slug, 
      this.category, 
      this.uniqueTournament, 
      this.priority, 
      this.isGroup, 
      this.competitionType, 
      this.isLive, 
      this.id,});

  Tournament.fromJson(dynamic json) {
    name = json['name'];
    slug = json['slug'];
    category = json['category'] != null ? Category.fromJson(json['category']) : null;
    uniqueTournament = json['uniqueTournament'] != null ? UniqueTournament.fromJson(json['uniqueTournament']) : null;
    priority = json['priority'];
    isGroup = json['isGroup'];
    competitionType = json['competitionType'];
    isLive = json['isLive'];
    id = json['id'];
  }
  String? name;
  String? slug;
  Category? category;
  UniqueTournament? uniqueTournament;
  int? priority;
  bool? isGroup;
  int? competitionType;
  bool? isLive;
  int? id;
Tournament copyWith({  String? name,
  String? slug,
  Category? category,
  UniqueTournament? uniqueTournament,
  int? priority,
  bool? isGroup,
  int? competitionType,
  bool? isLive,
  int? id,
}) => Tournament(  name: name ?? this.name,
  slug: slug ?? this.slug,
  category: category ?? this.category,
  uniqueTournament: uniqueTournament ?? this.uniqueTournament,
  priority: priority ?? this.priority,
  isGroup: isGroup ?? this.isGroup,
  competitionType: competitionType ?? this.competitionType,
  isLive: isLive ?? this.isLive,
  id: id ?? this.id,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['slug'] = slug;
    if (category != null) {
      map['category'] = category?.toJson();
    }
    if (uniqueTournament != null) {
      map['uniqueTournament'] = uniqueTournament?.toJson();
    }
    map['priority'] = priority;
    map['isGroup'] = isGroup;
    map['competitionType'] = competitionType;
    map['isLive'] = isLive;
    map['id'] = id;
    return map;
  }

}

class UniqueTournament {
  UniqueTournament({
      this.name, 
      this.slug, 
      this.primaryColorHex, 
      this.secondaryColorHex, 
      this.category, 
      this.userCount, 
      this.id, 
      this.country, 
      this.hasPerformanceGraphFeature, 
      this.hasEventPlayerStatistics, 
      this.displayInverseHomeAwayTeams,});

  UniqueTournament.fromJson(dynamic json) {
    name = json['name'];
    slug = json['slug'];
    primaryColorHex = json['primaryColorHex'];
    secondaryColorHex = json['secondaryColorHex'];
    category = json['category'] != null ? Category.fromJson(json['category']) : null;
    userCount = json['userCount'];
    id = json['id'];
    country = json['country'];
    hasPerformanceGraphFeature = json['hasPerformanceGraphFeature'];
    hasEventPlayerStatistics = json['hasEventPlayerStatistics'];
    displayInverseHomeAwayTeams = json['displayInverseHomeAwayTeams'];
  }
  String? name;
  String? slug;
  String? primaryColorHex;
  String? secondaryColorHex;
  Category? category;
  int? userCount;
  int? id;
  dynamic country;
  bool? hasPerformanceGraphFeature;
  bool? hasEventPlayerStatistics;
  bool? displayInverseHomeAwayTeams;
UniqueTournament copyWith({  String? name,
  String? slug,
  String? primaryColorHex,
  String? secondaryColorHex,
  Category? category,
  int? userCount,
  int? id,
  dynamic country,
  bool? hasPerformanceGraphFeature,
  bool? hasEventPlayerStatistics,
  bool? displayInverseHomeAwayTeams,
}) => UniqueTournament(  name: name ?? this.name,
  slug: slug ?? this.slug,
  primaryColorHex: primaryColorHex ?? this.primaryColorHex,
  secondaryColorHex: secondaryColorHex ?? this.secondaryColorHex,
  category: category ?? this.category,
  userCount: userCount ?? this.userCount,
  id: id ?? this.id,
  country: country ?? this.country,
  hasPerformanceGraphFeature: hasPerformanceGraphFeature ?? this.hasPerformanceGraphFeature,
  hasEventPlayerStatistics: hasEventPlayerStatistics ?? this.hasEventPlayerStatistics,
  displayInverseHomeAwayTeams: displayInverseHomeAwayTeams ?? this.displayInverseHomeAwayTeams,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['slug'] = slug;
    map['primaryColorHex'] = primaryColorHex;
    map['secondaryColorHex'] = secondaryColorHex;
    if (category != null) {
      map['category'] = category?.toJson();
    }
    map['userCount'] = userCount;
    map['id'] = id;
    map['country'] = country;
    map['hasPerformanceGraphFeature'] = hasPerformanceGraphFeature;
    map['hasEventPlayerStatistics'] = hasEventPlayerStatistics;
    map['displayInverseHomeAwayTeams'] = displayInverseHomeAwayTeams;
    return map;
  }

}

class Category {
  Category({
      this.name, 
      this.slug, 
      this.sport, 
      this.id, 
      this.country, 
      this.flag,});

  Category.fromJson(dynamic json) {
    name = json['name'];
    slug = json['slug'];
    sport = json['sport'] != null ? Sport.fromJson(json['sport']) : null;
    id = json['id'];
    country = json['country'];
    flag = json['flag'];
  }
  String? name;
  String? slug;
  Sport? sport;
  int? id;
  dynamic country;
  String? flag;
Category copyWith({  String? name,
  String? slug,
  Sport? sport,
  int? id,
  dynamic country,
  String? flag,
}) => Category(  name: name ?? this.name,
  slug: slug ?? this.slug,
  sport: sport ?? this.sport,
  id: id ?? this.id,
  country: country ?? this.country,
  flag: flag ?? this.flag,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['slug'] = slug;
    if (sport != null) {
      map['sport'] = sport?.toJson();
    }
    map['id'] = id;
    map['country'] = country;
    map['flag'] = flag;
    return map;
  }
}