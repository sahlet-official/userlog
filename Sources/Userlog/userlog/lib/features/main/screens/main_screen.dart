import 'package:flutter/material.dart';

import 'package:userlog/features/main/widgets/main_widgets/main_bottom_widget.dart';
import 'package:userlog/features/main/widgets/main_widgets/main_center_widget.dart';
import 'package:userlog/features/main/widgets/main_widgets/main_text_field_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //screen width
    double screenWidth = MediaQuery.of(context).size.width;
    //screen height
    double screenHeight = MediaQuery.of(context).size.height;

    //filter paddings
    double filterPaddingScreenWidthCoefficient = 1 / 20;
    double filterInputPadding =
        filterPaddingScreenWidthCoefficient * screenWidth;

    //records paddings
    double recordsPaddingScreenWidthCoefficient = 1 / 15;
    double recordsWidthInputPadding =
        recordsPaddingScreenWidthCoefficient * screenWidth;
    double recordsPaddingScreenHeightCoefficient = 1 / 30;
    double recordsHeightInputPadding =
        recordsPaddingScreenHeightCoefficient * screenHeight;

    //textarea paddings
    double textAreaPaddingScreenWidthCoefficient = 1.1;
    double textAreaWidthInputPadding =
        screenWidth / textAreaPaddingScreenWidthCoefficient;
    double textAreaPaddingScreenHeightCoefficient = 1.8;
    double textAreaHeightInputPadding =
        screenHeight / textAreaPaddingScreenHeightCoefficient;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          children: <Widget>[
            MainTextFieldWidget(
              filterInputPadding: filterInputPadding,
            ),
            MainCenterWidget(
                textAreaWidthInputPadding: textAreaWidthInputPadding,
                textAreaHeightInputPadding: textAreaHeightInputPadding,
                recordsWidthInputPadding: recordsWidthInputPadding,
                recordsHeightInputPadding: recordsHeightInputPadding),
            SizedBox(
              height: filterInputPadding,
              width: screenWidth,
            ),
            const MainBottomWidget(),
          ],
        ),
      ),
    );
  }
}
