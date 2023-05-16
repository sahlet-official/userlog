// Generate file injection.confic.dart in lib folder and start build in debug mode
// Call: dart scripts/build.dart
import 'dart:io';

void main(List<String> args) {
  const buildRunnerCmd =
      'flutter packages pub run build_runner build --delete-conflicting-outputs';
  const buildCmd = 'flutter build apk --debug';

  Process.runSync(buildRunnerCmd, [], runInShell: true);

  final processResult = Process.runSync(buildCmd, [], runInShell: true);

  if (processResult.exitCode == 0) {
    const fileExtension = 'apk';
    final outputFile = File('build/app/outputs/flutter-apk/app.$fileExtension');
    if (outputFile.existsSync()) {
      stdout.writeln('The app has been successfully built!');
    } else {
      stderr.writeln(
          'An error occurred while building the app: The following output file was not created: ${outputFile.path}');
    }
  } else {
    stderr.writeln('An error occurred while building the app:');
    stderr.writeln(processResult.stderr);
  }
}
