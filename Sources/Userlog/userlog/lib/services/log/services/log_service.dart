import 'dart:async';
import 'dart:math';

import 'package:injectable/injectable.dart';
import 'package:userlog/services/log/api/i_log_service.dart';
import 'package:userlog/services/log/api/models/record.dart';

@singleton
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
    int recordsNum = getRecordsNumber();
    bool throwExcept = false;
    throwExcept = from > recordsNum || to > recordsNum;
    throwExcept = throwExcept || from > to || from < 1;
    if (throwExcept) {
      throw ("Invate paramets");
    }

    List<Record> resultRecords = [];
    Record recElem;
    int resultRecordsNum = to - from;

    for (int i = 0; i < resultRecordsNum; i++) {
      recElem = generateRecord();
      resultRecords.add(recElem);
    }

    return resultRecords;
  }

  @override
  int getRecordsNumber() {
    return recordsNumber;
  }

  @override
  Stream<Record> getUpdates() async* {
    const period = Duration(seconds: 3);
    while (true) {
      recordsNumber++;
      yield Record(creationTime: DateTime.now(), value: "some value");
      await Future.delayed(period);
    }
  }
}
