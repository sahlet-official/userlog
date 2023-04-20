import 'package:flutter/material.dart';

import 'package:userlog/features/main/assets/main_texts.dart';
import 'package:userlog/features/main/widgets/clear_widgets/clear_text_button_style.dart';

class ClearCenterWidget extends StatelessWidget {
  const ClearCenterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 100),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const ClearTextButtonStyle(
              color: Colors.black,
              text: MainTexts.canselButtonText,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const ClearTextButtonStyle(
              color: Colors.red,
              text: MainTexts.clearButtonText,
            ),
          ),
        ],
      ),
    );
  }
}
