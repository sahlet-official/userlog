import 'package:userlog/common/infrastructure/feature_base/service_loader.dart';
import 'package:userlog/services/log/services/log_service.dart';

class LogServiceLoader extends ServiceLoader {
  final _logService = LogService();
}
