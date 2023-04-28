import 'package:flutter_test/flutter_test.dart';
import 'package:userlog/services/log/api/models/record.dart';
import 'package:userlog/services/log/services/log_service.dart';

void main() {
  test('Test getUpdates()', () async {
    // Arrange
    final updates = LogService().getUpdates();
    const expectedCount = 3;
    const expectedDuration = Duration(seconds: 3);
    var count = 0;
    var previousRecTime = DateTime.now().subtract(expectedDuration);

    // Act
    await for (var record in updates) {
      // Assert
      expect(record.value, '$count. some value');
      expect(record.recTime.isAfter(previousRecTime), isTrue);

      count++;
      previousRecTime = record.recTime;

      if (count >= expectedCount) {
        break;
      }
    }
  });

  test('Returns the correct number of records in a list', () {
    List<Record> rec = [
      Record(recTime: DateTime.now(), value: "some value"),
      Record(recTime: DateTime.now(), value: "some value"),
      Record(recTime: DateTime.now(), value: "some value"),
    ];
    expect(LogService().getRecordsNumber(), equals(rec.length));
  });

  test('getRecords returns the correct sublist of records', () {
    List<Record> rec = [
      Record(recTime: DateTime(2022, 1, 1, 12), value: "some value"),
      Record(recTime: DateTime(2022, 1, 1, 12), value: "some value"),
      Record(recTime: DateTime(2022, 1, 1, 12), value: "some value"),
      Record(recTime: DateTime(2022, 1, 1, 12), value: "some value"),
      Record(recTime: DateTime(2022, 1, 1, 12), value: "some value"),
      Record(recTime: DateTime(2022, 1, 1, 12), value: "some value"),
    ];

    expect(LogService().getRecords(2, 4).map((r) => r.value),
        equals(['some value', 'some value', 'some value']));
    expect(LogService().getRecords(0, 2).map((r) => r.value),
        equals(['some value', 'some value', 'some value']));
    expect(LogService().getRecords(4, 5).map((r) => r.value),
        equals(['some value', 'some value']));
    expect(LogService().getRecords(3, 3).map((r) => r.value),
        equals(['some value']));
  });
}
