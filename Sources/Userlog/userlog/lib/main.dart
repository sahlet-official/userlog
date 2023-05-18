import 'package:flutter/material.dart';

import 'package:userlog/common/infrastructure/feature_base/ui_feature.dart';
import 'package:userlog/features/about/api/about_feature.dart';
import 'package:userlog/features/main/api/main_feature.dart';
import 'package:userlog/features/main/api/main_routes.dart';
import 'package:userlog/injection.dart';

void main() {
  configureDependencies();
  runApp(const UserLogApp());
}

class UserLogApp extends StatelessWidget {
  const UserLogApp({super.key});

  Map<String, WidgetBuilder> _getRoutes(List<UIFeature> features) {
    Map<String, WidgetBuilder> routes = {};
    for (var e in features) {
      Map<String, WidgetBuilder> featureRoutes = e.getRoutes();
      for (var key in featureRoutes.keys) {
        if (routes.containsKey(key)) {
          throw "This route already exists";
        }
      }
      routes.addAll(featureRoutes);
    }
    return routes;
  }

  @override
  Widget build(BuildContext context) {
    List<UIFeature> features = [
      MainFeature(),
      AboutFeature(),
    ];
    Map<String, WidgetBuilder> routes = _getRoutes(features);

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
