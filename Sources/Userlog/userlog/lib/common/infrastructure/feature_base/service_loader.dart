import 'package:userlog/common/infrastructure/feature_base/feature.dart';

abstract class ServiceLoader implements Initable {
  @override
  Future<void> init() async {}
}
