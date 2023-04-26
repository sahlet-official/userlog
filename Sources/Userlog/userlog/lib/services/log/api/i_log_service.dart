abstract class ILogService {
  int getRecordsNumber();
  List getRecords(int from, int to); // dives records from number 'from' to number 'to'
  Stream getUpdates();
}
