import 'dart:async';
import 'dart:math';

import 'package:injectable/injectable.dart';
import 'package:userlog/services/log/api/i_log_service.dart';
import 'package:userlog/services/log/api/models/record.dart';

@injectable
class LogService implements ILogService {
  int recordsNumber = 40;

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
      final record = generateRecord();
      yield record;
      await Future.delayed(period);
    }
  }
}
