import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:userlog/features/main/bloc/main_scroll_bloc/main_scroll_bloc.dart';
import 'package:userlog/features/main/widgets/main_widgets/main_init_center_widget.dart';
import 'package:userlog/features/main/widgets/main_widgets/main_scroll_center_widget.dart';
import 'package:userlog/services/log/api/i_log_service.dart';

class MainCenterWidget extends StatelessWidget {
  final double textAreaWidthInputPadding;
  final double textAreaHeightInputPadding;
  final double recordsWidthInputPadding;
  final double recordsHeightInputPadding;

  final ILogService logService;

  const MainCenterWidget({
    Key? key,
    required this.textAreaWidthInputPadding,
    required this.textAreaHeightInputPadding,
    required this.recordsWidthInputPadding,
    required this.recordsHeightInputPadding,
    required this.logService,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MainScrollBloc>(
      create: (context) {
        final bloc = MainScrollBloc(logService);
        bloc.add(ScrollInitialEvent());
        bloc.startUpdates();
        return bloc;
      },
      child: BlocBuilder<MainScrollBloc, ScrollState>(
        builder: (context, state) {
          if (state is ScrollInitialState) {
            return MainInitCenterWidget(
              textAreaWidthInputPadding: textAreaWidthInputPadding,
              textAreaHeightInputPadding: textAreaHeightInputPadding,
              recordsWidthInputPadding: recordsWidthInputPadding,
              recordsHeightInputPadding: recordsHeightInputPadding,
            );
          } else if (state is ScrollLoadState) {
            return MainScrollCenterWidget(
              textAreaWidthInputPadding: textAreaWidthInputPadding,
              textAreaHeightInputPadding: textAreaHeightInputPadding,
              recordsWidthInputPadding: recordsWidthInputPadding,
              recordsHeightInputPadding: recordsHeightInputPadding,
              records: state.records,
            );
          } else if (state is ScrollUpdateState) {
            return MainScrollCenterWidget(
              textAreaWidthInputPadding: textAreaWidthInputPadding,
              textAreaHeightInputPadding: textAreaHeightInputPadding,
              recordsWidthInputPadding: recordsWidthInputPadding,
              recordsHeightInputPadding: recordsHeightInputPadding,
              records: state.records,
            );
          } else {
            return MainInitCenterWidget(
              textAreaWidthInputPadding: textAreaWidthInputPadding,
              textAreaHeightInputPadding: textAreaHeightInputPadding,
              recordsWidthInputPadding: recordsWidthInputPadding,
              recordsHeightInputPadding: recordsHeightInputPadding,
            );
          }
        },
      ),
    );
  }
}
