import 'dart:async';

import 'package:userlog/services/log/api/models/record.dart';
import 'package:userlog/services/log/services/log_service.dart';

void main() {
  final logService = LogService();
  List<Record> rec;
  StreamSubscription<Record> subscription;

  print(logService.getRecordsNumber());
  rec = logService.getRecords(1, 5);
  for (var element in rec) {
    print("${element.creationTime} : ${element.value}");
  }
  subscription = logService.getUpdates().listen((event) {
    print("${event.creationTime} : ${event.value}");
  });

}

