import 'package:flutter/material.dart';

import 'package:userlog/common/styles/fonts.dart';
import 'package:userlog/features/about/assets/about_texts.dart';

class AboutCenterWidget extends StatelessWidget {
  final double aboutUsTextWidthInputPadding;
  final double aboutUsTextHeightInputPadding;

  const AboutCenterWidget({
    Key? key,
    required this.aboutUsTextWidthInputPadding,
    required this.aboutUsTextHeightInputPadding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.fromLTRB(aboutUsTextWidthInputPadding,
            aboutUsTextHeightInputPadding, aboutUsTextWidthInputPadding, 0),
        child: const Text(
          AboutTexts.aboutUsText,
          style: TextStyle(
            color: Colors.white60,
            fontSize: 20,
            fontFamily: Fonts.mainFontFamily,
          ),
        ),
      ),
    );
  }
}
