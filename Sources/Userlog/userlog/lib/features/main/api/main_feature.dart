import 'package:flutter/widgets.dart';

import 'package:userlog/common/infrastructure/feature_base/feature_api.dart';
import 'package:userlog/features/main/api/main_routes.dart';
import 'package:userlog/features/main/screens/clear_log_confirmation_screen.dart';
import 'package:userlog/features/main/screens/main_screen.dart';

class MainApi extends FeatureApi {
  @override
  Map<String, WidgetBuilder> getRoutes() {
    return {
      MainRoutes.root: (context) => const MainScreen(),
      MainRoutes.clear: (context) => const ClearAnswer(),
    };
  }
}
