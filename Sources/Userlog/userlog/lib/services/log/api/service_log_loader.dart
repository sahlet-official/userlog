import 'package:userlog/common/infrastructure/feature_base/service_loader.dart';
import 'package:userlog/services/log/api/i_log_service.dart';
import 'package:userlog/services/log/services/log_service.dart';

class ServiceLogLoader extends ServiceLoader implements ILogService {
  final _logService = LogService();

  // @override
  // Stream<String> getUpdate() async* {
  //   // triggering an update using the getUpdate() method in the ServiceLog
  //   final Stream<Future<String>> updateStream = Stream.periodic(const Duration(seconds: 5), (_) async {
  //     return await _logService.getUpdate();
  //   });
  //   // convert each update in the stream to a string
  //   final stringStream = updateStream.asyncMap((update) => update.toString());
  //   // send each line to the output stream
  //   await for (final update in stringStream) {
  //     yield update;
  //   }
  // }

  @override
  List getRecords(int from, int to) {
    // TODO: implement getRecords
    throw UnimplementedError();
  }

  @override
  int getRecordsNumber() {
    // TODO: implement getRecordsNumber
    throw UnimplementedError();
  }

  @override
  Stream getUpdates() {
    // TODO: implement getUpdates
    throw UnimplementedError();
  }
}
