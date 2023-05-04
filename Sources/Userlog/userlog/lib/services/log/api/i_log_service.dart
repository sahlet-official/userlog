import 'package:userlog/services/log/api/models/record.dart';

abstract class ILogService {
  int getRecordsNumber();
  List<Record> getRecords(int from, int to);
  Stream<Record> getUpdates();
}
