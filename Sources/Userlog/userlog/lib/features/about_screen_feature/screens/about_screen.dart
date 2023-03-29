import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:userlog/common/styles/fonts.dart';
import 'package:userlog/features/about_screen_feature/assets/about_images.dart';
import 'package:userlog/features/about_screen_feature/assets/about_screen_texts.dart';

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
          Container(
            margin: const EdgeInsets.only(left: 0),
            padding: EdgeInsets.only(right: sizeBoxWidthInputPadding),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                IconButton(
                  icon: Align(
                    alignment: Alignment.bottomLeft,
                    child: SvgPicture.asset(
                      AboutImages.exitButtonImage,
                      fit: BoxFit.cover,
                    ),
                  ),
                  iconSize: 51,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                const Text(
                  AboutTexts.aboutText,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                    fontFamily: Fonts.mainFontFamily,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: sizeBoxHeightInputPadding,
            width: screenWidth,
          ),
          Center(
            child: Container(
              padding: EdgeInsets.fromLTRB(
                  aboutUsTextWidthInputPadding,
                  aboutUsTextHeightInputPadding,
                  aboutUsTextWidthInputPadding,
                  0),
              child: const Text(
                AboutTexts.aboutUsText,
                style: TextStyle(
                  color: Colors.white60,
                  fontSize: 20,
                  fontFamily: Fonts.mainFontFamily,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
