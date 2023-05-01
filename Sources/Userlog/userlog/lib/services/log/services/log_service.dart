import 'dart:async';
import 'dart:math';

import 'package:userlog/services/log/api/i_log_service.dart';
import 'package:userlog/services/log/api/models/record.dart';

class LogService implements ILogService {
  List<Record> rec = [];

  Record generateRecord() {
    final now = DateTime.now();
    final random = Random();
    final value = random.nextInt(100).toString();
    return Record(creationTime: now, value: value);
  }

  @override
  List<Record> getRecords(int from, int to) {
    List<Record> rec = [
      generateRecord(),
      generateRecord(),
      generateRecord(),
      generateRecord(),
      generateRecord(),
      generateRecord(),
      generateRecord()
    ];
    List<Record> getRec = [];

    if (from <= (getRecordsNumber() - 1) &&
        from <= to &&
        from >= 0 &&
        to >= 0) {
      to = to >= getRecordsNumber() ? getRecordsNumber() - 1 : to;
      for (int i = from; i <= to; i++) {
        getRec.add(rec[i]);
      }
      getRec.sort((a, b) => b.creationTime.compareTo(a.creationTime));
    }

    return getRec;
  }

  @override
  int getRecordsNumber() {
    return rec.length;
  }

  @override
  Stream<Record> getUpdates() async* {
    const period = Duration(seconds: 3);
    while (true) {
      yield Record(creationTime: DateTime.now(), value: "some value");
      await Future.delayed(period);
    }
  }
}
