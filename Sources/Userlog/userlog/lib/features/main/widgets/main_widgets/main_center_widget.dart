import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:userlog/common/styles/fonts.dart';
import 'package:userlog/features/main/assets/main_images.dart';
import 'package:userlog/features/main/assets/main_texts.dart';
import 'package:userlog/features/main/screens/clear_log_confirmation_screen.dart';
import 'package:userlog/features/main/widgets/main_widgets/main_icon_button.dart';

class MainCenterWidget extends StatelessWidget {
  final double textAreaWidthInputPadding;
  final double textAreaHeightInputPadding;

  const MainCenterWidget({
    Key? key,
    required this.textAreaWidthInputPadding,
    required this.textAreaHeightInputPadding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Center(
        child: Container(
          margin: const EdgeInsets.only(top: 20),
          padding: const EdgeInsets.all(12),
          width: textAreaWidthInputPadding,
          height: textAreaHeightInputPadding,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            border: Border.all(
              width: 2,
              color: Colors.black,
            ),
          ),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  alignment: Alignment.topRight,
                  child: Text(
                    MainTexts.logText,
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: Fonts.mainFontFamily,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  padding: const EdgeInsets.only(top: 12),
                  child: SvgPicture.asset(MainImages.sliderImage),
                ),
              ]),
        ),
      ),
      Container(
          alignment: Alignment.topRight,
          child: MainIconButton(
            imagePath: MainImages.cleanButtonImage,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ClearAnswer()));
            },
          )),
    ]);
  }
}
