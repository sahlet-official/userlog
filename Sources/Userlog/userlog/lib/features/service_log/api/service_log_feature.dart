import 'package:userlog/common/infrastructure/feature_base/service.dart';
import 'package:userlog/features/service_log/services/service_log.dart';

class ServiceLogFeature extends Service {
  final _logService = ServiceLog();

  @override
  Stream<String> getUpdate() async* {
    // triggering an update using the getUpdate() method in the ServiceLog
    final Stream<Future<String>> updateStream = Stream.periodic(const Duration(seconds: 5), (_) async {
      return await _logService.getUpdate();
    });
    // convert each update in the stream to a string
    final stringStream = updateStream.asyncMap((update) => update.toString());
    // send each line to the output stream
    await for (final update in stringStream) {
      yield update;
    }
  }
}