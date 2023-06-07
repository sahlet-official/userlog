part of 'main_scroll_bloc.dart';

abstract class ScrollEvent {}

class ScrollInitialEvent extends ScrollEvent {}

class ScrollLoadEvent extends ScrollEvent {}

class ScrollUpdateEvent extends ScrollEvent {
  final List<Record> records;
  ScrollUpdateEvent({
    required this.records,
  });
}
