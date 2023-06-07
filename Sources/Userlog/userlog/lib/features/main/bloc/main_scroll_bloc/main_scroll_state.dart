part of 'main_scroll_bloc.dart';

abstract class ScrollState {}

class ScrollInitialState extends ScrollState {}

class ScrollLoadState extends ScrollState {
  final List<Record> records;

  ScrollLoadState(this.records);
}

class ScrollUpdateState extends ScrollState {
  final List<Record> records;

  ScrollUpdateState(this.records);
}

class ScrollErrorState extends ScrollState {}
