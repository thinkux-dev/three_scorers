class MatchIncidentModel {
  MatchIncidentModel({
      this.success, 
      this.data,});

  MatchIncidentModel.fromJson(dynamic json) {
    success = json['success'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  bool? success;
  Data? data;
MatchIncidentModel copyWith({  bool? success,
  Data? data,
}) => MatchIncidentModel(  success: success ?? this.success,
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
      this.incidents, 
      this.home, 
      this.away,});

  Data.fromJson(dynamic json) {
    if (json['incidents'] != null) {
      incidents = [];
      json['incidents'].forEach((v) {
        incidents?.add(Incidents.fromJson(v));
      });
    }
    home = json['home'] != null ? Home.fromJson(json['home']) : null;
    away = json['away'] != null ? Away.fromJson(json['away']) : null;
  }
  List<Incidents>? incidents;
  Home? home;
  Away? away;
Data copyWith({  List<Incidents>? incidents,
  Home? home,
  Away? away,
}) => Data(  incidents: incidents ?? this.incidents,
  home: home ?? this.home,
  away: away ?? this.away,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (incidents != null) {
      map['incidents'] = incidents?.map((v) => v.toJson()).toList();
    }
    if (home != null) {
      map['home'] = home?.toJson();
    }
    if (away != null) {
      map['away'] = away?.toJson();
    }
    return map;
  }

}

class Away {
  Away({
      this.goalkeeperColor, 
      this.playerColor,});

  Away.fromJson(dynamic json) {
    goalkeeperColor = json['goalkeeperColor'] != null ? GoalkeeperColor.fromJson(json['goalkeeperColor']) : null;
    playerColor = json['playerColor'] != null ? PlayerColor.fromJson(json['playerColor']) : null;
  }
  GoalkeeperColor? goalkeeperColor;
  PlayerColor? playerColor;
Away copyWith({  GoalkeeperColor? goalkeeperColor,
  PlayerColor? playerColor,
}) => Away(  goalkeeperColor: goalkeeperColor ?? this.goalkeeperColor,
  playerColor: playerColor ?? this.playerColor,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (goalkeeperColor != null) {
      map['goalkeeperColor'] = goalkeeperColor?.toJson();
    }
    if (playerColor != null) {
      map['playerColor'] = playerColor?.toJson();
    }
    return map;
  }

}

class PlayerColor {
  PlayerColor({
      this.primary, 
      this.number, 
      this.outline, 
      this.fancyNumber,});

  PlayerColor.fromJson(dynamic json) {
    primary = json['primary'];
    number = json['number'];
    outline = json['outline'];
    fancyNumber = json['fancyNumber'];
  }
  String? primary;
  String? number;
  String? outline;
  String? fancyNumber;
PlayerColor copyWith({  String? primary,
  String? number,
  String? outline,
  String? fancyNumber,
}) => PlayerColor(  primary: primary ?? this.primary,
  number: number ?? this.number,
  outline: outline ?? this.outline,
  fancyNumber: fancyNumber ?? this.fancyNumber,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['primary'] = primary;
    map['number'] = number;
    map['outline'] = outline;
    map['fancyNumber'] = fancyNumber;
    return map;
  }

}

class GoalkeeperColor {
  GoalkeeperColor({
      this.primary, 
      this.number, 
      this.outline, 
      this.fancyNumber,});

  GoalkeeperColor.fromJson(dynamic json) {
    primary = json['primary'];
    number = json['number'];
    outline = json['outline'];
    fancyNumber = json['fancyNumber'];
  }
  String? primary;
  String? number;
  String? outline;
  String? fancyNumber;
GoalkeeperColor copyWith({  String? primary,
  String? number,
  String? outline,
  String? fancyNumber,
}) => GoalkeeperColor(  primary: primary ?? this.primary,
  number: number ?? this.number,
  outline: outline ?? this.outline,
  fancyNumber: fancyNumber ?? this.fancyNumber,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['primary'] = primary;
    map['number'] = number;
    map['outline'] = outline;
    map['fancyNumber'] = fancyNumber;
    return map;
  }

}

class Home {
  Home({
      this.goalkeeperColor, 
      this.playerColor,});

  Home.fromJson(dynamic json) {
    goalkeeperColor = json['goalkeeperColor'] != null ? GoalkeeperColor.fromJson(json['goalkeeperColor']) : null;
    playerColor = json['playerColor'] != null ? PlayerColor.fromJson(json['playerColor']) : null;
  }
  GoalkeeperColor? goalkeeperColor;
  PlayerColor? playerColor;
Home copyWith({  GoalkeeperColor? goalkeeperColor,
  PlayerColor? playerColor,
}) => Home(  goalkeeperColor: goalkeeperColor ?? this.goalkeeperColor,
  playerColor: playerColor ?? this.playerColor,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (goalkeeperColor != null) {
      map['goalkeeperColor'] = goalkeeperColor?.toJson();
    }
    if (playerColor != null) {
      map['playerColor'] = playerColor?.toJson();
    }
    return map;
  }

}

class Incidents {
  Incidents({
      this.text, 
      this.homeScore, 
      this.awayScore, 
      this.isLive, 
      this.time, 
      this.addedTime, 
      this.timeSeconds, 
      this.reversedPeriodTime, 
      this.reversedPeriodTimeSeconds, 
      this.incidentType,});

  Incidents.fromJson(dynamic json) {
    text = json['text'];
    homeScore = json['homeScore'];
    awayScore = json['awayScore'];
    isLive = json['isLive'];
    time = json['time'];
    addedTime = json['addedTime'];
    timeSeconds = json['timeSeconds'];
    reversedPeriodTime = json['reversedPeriodTime'];
    reversedPeriodTimeSeconds = json['reversedPeriodTimeSeconds'];
    incidentType = json['incidentType'];
  }
  String? text;
  num? homeScore;
  num? awayScore;
  bool? isLive;
  num? time;
  num? addedTime;
  num? timeSeconds;
  num? reversedPeriodTime;
  num? reversedPeriodTimeSeconds;
  String? incidentType;
Incidents copyWith({  String? text,
  num? homeScore,
  num? awayScore,
  bool? isLive,
  num? time,
  num? addedTime,
  num? timeSeconds,
  num? reversedPeriodTime,
  num? reversedPeriodTimeSeconds,
  String? incidentType,
}) => Incidents(  text: text ?? this.text,
  homeScore: homeScore ?? this.homeScore,
  awayScore: awayScore ?? this.awayScore,
  isLive: isLive ?? this.isLive,
  time: time ?? this.time,
  addedTime: addedTime ?? this.addedTime,
  timeSeconds: timeSeconds ?? this.timeSeconds,
  reversedPeriodTime: reversedPeriodTime ?? this.reversedPeriodTime,
  reversedPeriodTimeSeconds: reversedPeriodTimeSeconds ?? this.reversedPeriodTimeSeconds,
  incidentType: incidentType ?? this.incidentType,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['text'] = text;
    map['homeScore'] = homeScore;
    map['awayScore'] = awayScore;
    map['isLive'] = isLive;
    map['time'] = time;
    map['addedTime'] = addedTime;
    map['timeSeconds'] = timeSeconds;
    map['reversedPeriodTime'] = reversedPeriodTime;
    map['reversedPeriodTimeSeconds'] = reversedPeriodTimeSeconds;
    map['incidentType'] = incidentType;
    return map;
  }

}