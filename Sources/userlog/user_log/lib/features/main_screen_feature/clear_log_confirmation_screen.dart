import 'package:flutter/material.dart';
import 'package:user_log/core/fonts.dart';
import 'package:user_log/core/texts.dart';

class ClearAnswer extends StatelessWidget {
  const ClearAnswer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          const ClearTitle(),
          Container(
            padding: const EdgeInsets.only(top: 100),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const TextButtonStyle(color: Colors.black, text: Texts.canselButtonText),
                ),
                const SizedBox(
                  width: 20,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const TextButtonStyle(color: Colors.red, text: Texts.clearButtonText),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ClearTitle extends StatelessWidget {
  const ClearTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.fromLTRB(60, 270, 0, 0),
        child: const Text(
          Texts.clearQuestionText,
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

class TextButtonStyle extends StatelessWidget {
  final Color color;
  final String text;
  const TextButtonStyle({
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
