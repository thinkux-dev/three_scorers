class LeagueLogoModel {
  LeagueLogoModel({
      this.success, 
      this.data,});

  LeagueLogoModel.fromJson(dynamic json) {
    success = json['success'];
    data = json['data'];
  }
  bool? success;
  String? data;
LeagueLogoModel copyWith({  bool? success,
  String? data,
}) => LeagueLogoModel(  success: success ?? this.success,
  data: data ?? this.data,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = success;
    map['data'] = data;
    return map;
  }

}