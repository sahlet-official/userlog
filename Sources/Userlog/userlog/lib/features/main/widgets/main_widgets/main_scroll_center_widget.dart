import 'package:flutter/material.dart';

import 'package:userlog/common/styles/fonts.dart';
import 'package:userlog/features/main/assets/main_images.dart';
import 'package:userlog/features/main/assets/main_texts.dart';
import 'package:userlog/features/main/screens/clear_log_confirmation_screen.dart';
import 'package:userlog/features/main/widgets/main_widgets/main_icon_button.dart';
import 'package:userlog/features/main/widgets/main_widgets/main_scroll_item.dart';
import 'package:userlog/services/log/api/models/record.dart';

class MainScrollCenterWidget extends StatelessWidget {
  final double textAreaWidthInputPadding;
  final double textAreaHeightInputPadding;
  final double recordsWidthInputPadding;
  final double recordsHeightInputPadding;
  final List<Record> records;

  const MainScrollCenterWidget({
    Key? key,
    required this.textAreaWidthInputPadding,
    required this.textAreaHeightInputPadding,
    required this.recordsWidthInputPadding,
    required this.recordsHeightInputPadding,
    required this.records,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScrollController scrollController = ScrollController();

    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.fromLTRB(recordsWidthInputPadding,
              recordsHeightInputPadding, recordsWidthInputPadding, 0),
          child: Text(
            "${MainTexts.recordsText}${records.length}",
            style: TextStyle(
              color: Colors.grey[500],
              fontSize: 15,
              fontFamily: Fonts.mainFontFamily,
            ),
          ),
        ),
        Stack(
          children: [
            Center(
              child: Container(
                margin: const EdgeInsets.only(top: 20),
                padding: const EdgeInsets.all(12),
                width: textAreaWidthInputPadding,
                height: textAreaHeightInputPadding,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                  border: Border.all(
                    width: 2,
                    color: Colors.black,
                  ),
                ),
                child: Scrollbar(
                  thickness: 6,
                  controller: scrollController,
                  thumbVisibility: true,
                  child: ListView.builder(
                    reverse: true,
                    controller: scrollController,
                    itemCount: records.length,
                    itemBuilder: (context, index) {
                      final record = records[index];
                      return MainScrollItem(
                          date: record.creationTime, text: record.value);
                    },
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.topRight,
              child: MainIconButton(
                imagePath: MainImages.cleanButtonImage,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ClearAnswer()),
                  );
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
