import 'package:userlog/common/infrastructure/feature_base/feature.dart';

abstract class Service extends Feature {
  Stream<String> getUpdate();
}
