// Generate file injection.confic.dart in lib folder
// Call: dart scripts/generate_config.dart
import 'dart:io';

void main(List<String> args) {
  const cmd = 'flutter pub run build_runner build --delete-conflicting-outputs';
  Process.runSync(cmd, [], runInShell: true);
}
