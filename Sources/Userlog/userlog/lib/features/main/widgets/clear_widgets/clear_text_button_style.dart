import 'package:flutter/material.dart';

import 'package:userlog/common/styles/fonts.dart';

class ClearTextButtonStyle extends StatelessWidget {
  final Color color;
  final String text;
  const ClearTextButtonStyle({
    Key? key,
    required this.color,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: 32,
        fontWeight: FontWeight.bold,
        fontFamily: Fonts.mainFontFamily,
      ),
    );
  }
}
