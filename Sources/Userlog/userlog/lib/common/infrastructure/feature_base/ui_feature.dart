import 'package:flutter/widgets.dart';

import 'package:userlog/common/infrastructure/feature_base/feature.dart';

abstract class UIFeature extends Feature {
  Map<String, WidgetBuilder> getRoutes() => {};
}
