import 'dart:async';
import 'dart:math';

import 'package:userlog/services/log/api/i_log_service.dart';
import 'package:userlog/services/log/api/models/record.dart';

class LogService implements ILogService {
  int recordsNumber = 10;

  Record generateRecord() {
    final now = DateTime.now();
    final random = Random();
    final value = random.nextInt(100).toString();
    return Record(creationTime: now, value: value);
  }

  @override
  List<Record> getRecords(int from, int to) {
    List<Record> rec = [];
    List<Record> getRec = [];
    Record recElem;

    for (int i = 0; i < getRecordsNumber(); i++) {
      recElem = generateRecord();
      rec.add(recElem);
    }

    if (from <= getRecordsNumber() &&
        to <= getRecordsNumber() &&
        from <= to &&
        from > 0 &&
        to > 0) {
      for (int i = (from - 1); i <= (to - 1); i++) {
        getRec.add(rec[i]);
      }
    }

    return getRec;
  }

  @override
  int getRecordsNumber() {
    return recordsNumber;
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
