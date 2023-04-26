import 'dart:async';

class LogService{
  Future<String> getUpdate() async {
    Duration interval = const Duration(seconds: 5);
    String result = 'Update';
    Timer.periodic(interval, (Timer t) {
      result = 'Update';
    });
    return result;
  }
}
