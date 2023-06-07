import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:userlog/services/log/api/i_log_service.dart';
import 'package:userlog/services/log/api/models/record.dart';

part 'main_scroll_event.dart';
part 'main_scroll_state.dart';

class MainScrollBloc extends Bloc<ScrollEvent, ScrollState> {
  final ILogService logService;
  StreamSubscription<Record>? updatesSubscription;
  bool isUpdating = false;
  List<Record> loadedRecords = [];
  MainScrollBloc(this.logService) : super(ScrollInitialState()) {
    on<ScrollInitialEvent>(_onScrollInitialEvent);
    on<ScrollLoadEvent>(_onScrollLoadEvent);
    on<ScrollUpdateEvent>(_onScrollUpdateEvent);
  }

  FutureOr<void> _onScrollLoadEvent(
      ScrollLoadEvent event, Emitter<ScrollState> emit) {
    final List<Record> records = logService.getRecords(1, 30);
    loadedRecords = records;
    records.sort((a, b) => a.creationTime.compareTo(b.creationTime));
    final ScrollLoadState loadState = ScrollLoadState(records);
    emit(loadState);
  }

  @override
  Future<void> close() {
    updatesSubscription?.cancel();
    return super.close();
  }

  FutureOr<void> _onScrollInitialEvent(
      ScrollInitialEvent event, Emitter<ScrollState> emit) {
    add(ScrollLoadEvent());
  }

  void startUpdates() {
    updatesSubscription?.cancel();
    updatesSubscription = logService.getUpdates().listen((record) {
      loadedRecords.add(record);
      loadedRecords.sort((a, b) => a.creationTime.compareTo(b.creationTime));
      final updatedState = ScrollUpdateState(List.of(loadedRecords));
      add(ScrollUpdateEvent(records: updatedState.records));
    });

    final currentState = state;
    if (currentState is ScrollLoadState) {
      add(ScrollUpdateEvent(records: currentState.records));
    } else if (currentState is ScrollUpdateState) {
      add(ScrollUpdateEvent(records: currentState.records));
    }
  }

  FutureOr<void> _onScrollUpdateEvent(
      ScrollUpdateEvent event, Emitter<ScrollState> emit) {
    for (final record in event.records) {
      if (!loadedRecords.contains(record)) {
        loadedRecords.add(record);
      }
    }
    loadedRecords.sort((a, b) => a.creationTime.compareTo(b.creationTime));
    final updatedState = ScrollUpdateState(List.of(loadedRecords));
    emit(updatedState);
  }
}
