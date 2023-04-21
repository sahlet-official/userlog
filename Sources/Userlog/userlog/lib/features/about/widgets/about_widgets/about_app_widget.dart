import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:userlog/common/styles/fonts.dart';
import 'package:userlog/features/about/assets/about_images.dart';
import 'package:userlog/features/about/assets/about_texts.dart';

class AboutAppWidget extends StatelessWidget {
  final double sizeBoxWidthInputPadding;

  const AboutAppWidget({
    Key? key,
    required this.sizeBoxWidthInputPadding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
