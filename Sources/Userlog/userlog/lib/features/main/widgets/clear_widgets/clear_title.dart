import 'package:flutter/material.dart';

import 'package:userlog/common/styles/fonts.dart';
import 'package:userlog/features/main/assets/main_texts.dart';

class ClearTitle extends StatelessWidget {
  const ClearTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.fromLTRB(60, 270, 0, 0),
        child: const Text(
          MainTexts.clearQuestionText,
          style: TextStyle(
            color: Colors.black,
            fontSize: 36,
            fontWeight: FontWeight.bold,
            fontFamily: Fonts.mainFontFamily,
          ),
        ),
      ),
    );
  }
}
