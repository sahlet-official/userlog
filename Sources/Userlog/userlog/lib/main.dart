import 'package:flutter/material.dart';

import 'package:userlog/common/infrastructure/feature_base/feature_api.dart';
import 'package:userlog/features/about/api/about_feature.dart';
import 'package:userlog/features/main/api/main_feature.dart';

void main() {
  runApp(const UserLogApp());
}

class UserLogApp extends StatelessWidget {
  const UserLogApp({super.key});

  @override
  Widget build(BuildContext context) {
    List<FeatureApi> featuresApi = [MainApi(), AboutApi()];
    Map<String, WidgetBuilder> routes = {};
    for (var e in featuresApi) {
      routes.addAll(e.getRoutes());
    }

    return MaterialApp(
      title: 'UserLog',
      theme: ThemeData(
        backgroundColor: Colors.white,
      ),
      initialRoute: '/',
      routes: routes,
    );
  }
}
