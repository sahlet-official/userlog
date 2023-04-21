import 'package:flutter/material.dart';

import 'package:userlog/common/styles/fonts.dart';
import 'package:userlog/features/main/assets/main_texts.dart';

class RecordLabel extends StatelessWidget {
  final double recordsWidthInputPadding;
  final double recordsHeightInputPadding;

  const RecordLabel({
    Key? key,
    required this.recordsWidthInputPadding,
    required this.recordsHeightInputPadding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(recordsWidthInputPadding,
          recordsHeightInputPadding, recordsWidthInputPadding, 0),
      child: Text(
        MainTexts.recordsText,
        style: TextStyle(
          color: Colors.grey[500],
          fontSize: 15,
          fontFamily: Fonts.mainFontFamily,
        ),
      ),
    );
  }
}
