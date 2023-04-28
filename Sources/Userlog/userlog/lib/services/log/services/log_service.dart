import 'dart:async';

import 'package:userlog/services/log/api/i_log_service.dart';
import 'package:userlog/services/log/api/models/record.dart';

class LogService implements ILogService {
  @override
  List getRecords(int from, int to) {
    List<Record> rec = [
      Record(recTime: DateTime(2022, 1, 1, 12), value: "some value"),
      Record(recTime: DateTime(2022, 1, 1, 12), value: "some value"),
      Record(recTime: DateTime(2022, 1, 1, 12), value: "some value"),
      Record(recTime: DateTime(2022, 1, 1, 12), value: "some value"),
      Record(recTime: DateTime(2022, 1, 1, 12), value: "some value"),
      Record(recTime: DateTime(2022, 1, 1, 12), value: "some value"),
    ];
    List<Record> getRec = [];
    for (int i = 0; i < rec.length; i++) {
      if (i >= from && i <= to) {
        getRec.add(rec[i]);
      } else if (i > to) {
        break;
      }
    }

    return getRec;
  }

  @override
  int getRecordsNumber() {
    List<Record> rec = [
      Record(recTime: DateTime.now(), value: "some value"),
      Record(recTime: DateTime.now(), value: "some value"),
      Record(recTime: DateTime.now(), value: "some value"),
    ];
    int recordsNum = 0;
    recordsNum = rec.length;
    return recordsNum;
  }

  @override
  Stream<Record> getUpdates() async* {
    const period = Duration(seconds: 3);
    const int count = 3;
    for (int i = 0; i < count; i++) {
      yield Record(recTime: DateTime.now(), value: "$i. some value");
      await Future.delayed(period);
    }
  }
}
