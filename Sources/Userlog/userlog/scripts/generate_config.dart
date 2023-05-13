// Generate file injection.confic.dart in lib folder
// Call: dart scripts/generate_config.dart
import 'package:args/args.dart';
import 'dart:io';

void main(List<String> args) {
  final parser = ArgParser()..addFlag('help', abbr: 'h', negatable: false);
  final results = parser.parse(args);

  if (results['help'] as bool) {
    stdout.writeln('Usage: generate_config.dart');
    stdout.writeln('Generate config files by calling "flutter pub run build_runner build --delete-conflicting-outputs"');
    stdout.writeln(parser.usage);
    exit(0);
  }

  const cmd = 'flutter pub run build_runner build --delete-conflicting-outputs';
  Process.runSync(cmd, [], runInShell: true);
}
