import 'package:flutter/widgets.dart';

import 'package:userlog/common/infrastructure/feature_base/initable.dart';

abstract class UIFeature implements Initable {
  @override
  Future<void> init() async {}

  Map<String, WidgetBuilder> getRoutes() => {};
}
