import 'package:flutter/widgets.dart';

import 'package:userlog/common/infrastructure/feature_base/ui_feature_loader.dart';
import 'package:userlog/features/main/api/main_routes.dart';
import 'package:userlog/features/main/screens/main_screen.dart';

class MainFeature extends UIFeatureLoader {
  @override
  Map<String, WidgetBuilder> getRoutes() {
    return {
      MainRoutes.root: (context) => const MainScreen(),
    };
  }
  
  @override
  Future<void> init() {
    // TODO: implement init
    throw UnimplementedError();
  }
}
