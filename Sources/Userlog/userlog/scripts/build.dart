// Generate file injection.confic.dart in lib folder and start build in debug mode
// Call: dart scripts/build.dart
import 'dart:io';

void main(List<String> args) {
  const buildRunnerCmd =
      'flutter packages pub run build_runner build --delete-conflicting-outputs';
  const buildCmd = 'flutter build apk --debug';

  final buildRunnerResult =
      Process.runSync(buildRunnerCmd, [], runInShell: true);
  stdout.write(buildRunnerResult.stdout);
  stderr.write(buildRunnerResult.stderr);

  final buildResult = Process.runSync(buildCmd, [], runInShell: true);
  stdout.write(buildResult.stdout);
  stderr.write(buildResult.stderr);
}
