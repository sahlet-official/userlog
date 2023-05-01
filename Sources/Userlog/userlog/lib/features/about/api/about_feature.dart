import 'package:flutter/widgets.dart';

import 'package:userlog/common/infrastructure/feature_base/ui_feature.dart';
import 'package:userlog/features/about/api/about_routes.dart';
import 'package:userlog/features/about/screens/about_screen.dart';

class AboutFeature extends UIFeature {
  @override
  Map<String, WidgetBuilder> getRoutes() {
    return {
      AboutRoutes.about: (context) => const AboutScreen(),
    };
  }
  
  @override
  Future<void> init() {
    // TODO: implement init
    throw UnimplementedError();
  }
}
