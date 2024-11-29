import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:three_scorers/common/routes/app_routes_names.dart';
import 'package:three_scorers/features/dashboard/dashboard.dart';
import 'package:three_scorers/features/home/view/home.dart';


class AppPages {
  static List<RouteEntity> routes() {
    return [
      RouteEntity(page: const Home(), path: AppRoutesNames.HOME),
    ];
  }

  static MaterialPageRoute generateRouteSettings(RouteSettings settings) {
    if (kDebugMode) {
      print("Clicked route is ${settings.name}");
    }

    return MaterialPageRoute(
        builder: (_) => const Dashboard(),
        settings: settings);
  }
}

class RouteEntity{
  String path;
  Widget page;
  RouteEntity({required this.path, required this.page});
}
