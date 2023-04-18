import 'package:flutter/material.dart';

import 'package:userlog/common/styles/fonts.dart';

class ClearTextButtonStyle extends StatelessWidget {
  final Color color;
  final String text;
  final double fontSize;
  const ClearTextButtonStyle({
    Key? key,
    required this.color,
    required this.text,
    required this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
        fontFamily: Fonts.mainFontFamily,
      ),
    );
  }
}
