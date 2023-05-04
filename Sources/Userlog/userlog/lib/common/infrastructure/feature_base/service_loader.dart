import 'package:userlog/common/infrastructure/feature_base/initable.dart';

abstract class ServiceLoader implements Initable {
  @override
  Future<void> init() async {}
}
