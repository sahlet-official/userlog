import 'package:flutter/material.dart';

import 'package:userlog/features/about/widgets/about_widgets/about_app_widget.dart';
import 'package:userlog/features/about/widgets/about_widgets/about_center_widget.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //screen width
    double screenWidth = MediaQuery.of(context).size.width;
    //screen height
    double screenHeight = MediaQuery.of(context).size.height;

    //sizeBox paddings
    double sizeBoxPaddingScreenHeightCoefficient = 1 / 20;
    double sizeBoxHeightInputPadding =
        screenHeight * sizeBoxPaddingScreenHeightCoefficient;

    //exitButton paddings
    double exitButtonPaddingScreenWidthCoefficient = 1 / 2;
    double sizeBoxWidthInputPadding =
        screenWidth * exitButtonPaddingScreenWidthCoefficient;

    //aboutUsText paddings
    double aboutUsTextPaddingScreenCoefficient = 1 / 30;
    double aboutUsTextWidthInputPadding =
        screenWidth * aboutUsTextPaddingScreenCoefficient;
    double aboutUsTextHeightInputPadding =
        screenHeight * aboutUsTextPaddingScreenCoefficient;

    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: sizeBoxHeightInputPadding,
            width: screenWidth,
          ),
          AboutAppWidget(sizeBoxWidthInputPadding: sizeBoxWidthInputPadding),
          SizedBox(
            height: sizeBoxHeightInputPadding,
            width: screenWidth,
          ),
          AboutCenterWidget(
              aboutUsTextWidthInputPadding: aboutUsTextWidthInputPadding,
              aboutUsTextHeightInputPadding: aboutUsTextHeightInputPadding),
        ],
      ),
    );
  }
}
