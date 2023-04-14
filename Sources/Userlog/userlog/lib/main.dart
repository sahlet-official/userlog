import 'package:flutter/material.dart';

import 'package:userlog/common/infrastructure/feature_base/ui_feature.dart';
import 'package:userlog/features/about/api/about_feature.dart';
import 'package:userlog/features/main/api/main_feature.dart';
import 'package:userlog/features/main/api/main_routes.dart';

void main() {
  runApp(const UserLogApp());
}

class UserLogApp extends StatelessWidget {
  const UserLogApp({super.key});

  Map<String, WidgetBuilder> _isSameRoute(
      Map<String, WidgetBuilder> route, Map<String, WidgetBuilder> routes) {
    for (var key in route.keys) {
      if (routes.containsKey(key)) {
        throw "This route already exists";
      }
      routes[key] = route[key]!;
    }

    return routes;
  }

  @override
  Widget build(BuildContext context) {
    List<UIFeature> features = [
      MainFeature(), 
      AboutFeature(),
    ];
    Map<String, WidgetBuilder> routes = {};
    Map<String, WidgetBuilder> route;
    for (var e in features) {
      route = e.getRoutes();
      _isSameRoute(route, routes);
    }

    return MaterialApp(
      title: 'UserLog',
      theme: ThemeData(
        backgroundColor: Colors.white,
      ),
      initialRoute: MainRoutes.root,
      routes: routes,
    );
  }
}
