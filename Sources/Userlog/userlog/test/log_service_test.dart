import 'package:flutter_test/flutter_test.dart';
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
      expect(record.creationTime.isAfter(previousRecTime), isTrue);

      count++;
      previousRecTime = record.creationTime;

      if (count >= expectedCount) {
        break;
      }
    }
  });

 
  group('getRecords()', () {
    test('should return correct records within range', () {
      final logService = LogService();
      const from = 2;
      const to = 5;

      final records = logService.getRecords(from, to);

      expect(records.length, equals(to - from + 1));
      expect(records.first.creationTime.isBefore(records.last.creationTime), isTrue);
    });

    test('should return empty list if from is greater than to', () {
      final logService = LogService();
      const from = 5;
      const to = 2;

      final records = logService.getRecords(from, to);

      expect(records.isEmpty, isTrue);
    });

    test('should return empty list if to is greater than the number of records', () {
      final logService = LogService();
      const from = 0;
      final to = logService.getRecordsNumber() + 1;

      final records = logService.getRecords(from, to);

      expect(records.isEmpty, isTrue);
    });
  });
}
