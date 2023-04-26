import 'package:flutter/widgets.dart';

import 'package:userlog/common/infrastructure/feature_base/feature.dart';

abstract class UIFeatureLoader implements Initable {
  @override
  Future<void> init() async {}

  Map<String, WidgetBuilder> getRoutes() => {};
}
