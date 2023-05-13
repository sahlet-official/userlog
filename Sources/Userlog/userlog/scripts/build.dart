// Generate file injection.confic.dart in lib folder and start build in debug mode
// Call: dart scripts/build.dart
// Call in debug mode: dart scripts/build.dart -d
import 'package:args/args.dart';
import 'dart:io';

void main(List<String> args) {
  final parser = ArgParser()
    ..addFlag('help', abbr: 'h', negatable: false)
    ..addFlag('debug', abbr: 'd', negatable: false);

  final results = parser.parse(args);

  if (results['help'] as bool) {
    stdout.writeln('Usage: build_app.dart [-d] [--help]');
    stdout.writeln('Build the app in the specified mode.');
    stdout.writeln('Options:');
    stdout.writeln(parser.usage);
    exit(0);
  }

  const buildRunnerCmd =
      'flutter packages pub run build_runner build --delete-conflicting-outputs';
  final buildCmd = results['debug'] as bool ? 'flutter build apk --debug' : 'flutter build apk';

  Process.runSync(buildRunnerCmd, [], runInShell: true);
  
  final processResult = Process.runSync(buildCmd, [], runInShell: true);

  if (processResult.exitCode == 0) {
    final buildDir = results['debug'] as bool ? 'debug' : 'release';
    const fileExtension = 'apk';
    final outputFile = File('build/app/outputs/flutter-apk/app.$fileExtension');
    if (outputFile.existsSync()) {
      stdout.writeln('The app has been successfully built!');
    } else {
      stderr.writeln('An error occurred while building the app: The following output file was not created: ${outputFile.path}');
    }
  } else {
    stderr.writeln('An error occurred while building the app:');
    stderr.writeln(processResult.stderr);
  }
}

