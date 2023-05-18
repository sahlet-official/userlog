import 'package:injectable/injectable.dart';

import 'package:userlog/services/log/api/i_log_service.dart';
import 'package:userlog/services/log/services/log_service.dart';

@module
abstract class LogServiceDiModule {
  @singleton
  ILogService get logService => LogService();
}
