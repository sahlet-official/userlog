import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:userlog/common/styles/fonts.dart';
import 'package:userlog/features/about/api/about_routes.dart';
import 'package:userlog/features/main/assets/main_images.dart';
import 'package:userlog/features/main/assets/main_texts.dart';
import 'package:userlog/features/main/screens/clear_log_confirmation_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //screen width
    double screenWidth = MediaQuery.of(context).size.width;
    //screen height
    double screenHeight = MediaQuery.of(context).size.height;

    //filter paddings
    double filterPaddingScreenWidthCoefficient = 1 / 20;
    double filterInputPadding =
        filterPaddingScreenWidthCoefficient * screenWidth;

    //records paddings
    double recordsPaddingScreenWidthCoefficient = 1 / 15;
    double recordsWidthInputPadding =
        recordsPaddingScreenWidthCoefficient * screenWidth;
    double recordsPaddingScreenHeightCoefficient = 1 / 30;
    double recordsHeightInputPadding =
        recordsPaddingScreenHeightCoefficient * screenHeight;

    //textarea paddings
    double textAreaPaddingScreenWidthCoefficient = 1.1;
    double textAreaWidthInputPadding =
        screenWidth / textAreaPaddingScreenWidthCoefficient;
    double textAreaPaddingScreenHeightCoefficient = 1.8;
    double textAreaHeightInputPadding =
        screenHeight / textAreaPaddingScreenHeightCoefficient;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          children: <Widget>[
            TextFieldWidget(
              filterInputPadding: filterInputPadding,
            ),
            RecordLabel(
                recordsWidthInputPadding: recordsWidthInputPadding,
                recordsHeightInputPadding: recordsHeightInputPadding),
            MainCenterWidget(
                textAreaWidthInputPadding: textAreaWidthInputPadding,
                textAreaHeightInputPadding: textAreaHeightInputPadding),
            SizedBox(
              height: filterInputPadding,
              width: screenWidth,
            ),
            const MainBottomWidget(),
          ],
        ),
      ),
    );
  }
}

class TextFieldWidget extends StatefulWidget {
  final double filterInputPadding;

  const TextFieldWidget({Key? key, required this.filterInputPadding})
      : super(key: key);

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //filter paddings
    double filterInputPadding = widget.filterInputPadding;

    return Container(
      padding: EdgeInsets.fromLTRB(
          filterInputPadding, filterInputPadding, filterInputPadding, 0),
      child: TextField(
        controller: _controller,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              width: 2,
            ),
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              width: 2,
            ),
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          labelText: MainTexts.filterText,
          labelStyle: TextStyle(
            color: Colors.grey[500],
            fontSize: 24,
            fontWeight: FontWeight.bold,
            fontFamily: Fonts.mainFontFamily,
          ),
        ),
      ),
    );
  }
}

class MainBottomWidget extends StatelessWidget {
  const MainBottomWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        MainIconButton(
          imagePath: MainImages.infoButtonImage,
          iconSize: 33,
          onPressed: () {
            Navigator.pushNamed(
              context,
              AboutRoutes.about,
            );
          },
        ),
        MainIconButton(
            imagePath: MainImages.shutdownButtonImage,
            iconSize: 33,
            onPressed: () => SystemNavigator.pop()),
      ],
    );
  }
}

class MainIconButton extends StatelessWidget {
  final String imagePath;
  final double iconSize;
  final Function onPressed;

  const MainIconButton({
    Key? key,
    required this.imagePath,
    required this.iconSize,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: SvgPicture.asset(
        imagePath,
        fit: BoxFit.cover,
      ),
      iconSize: iconSize,
      onPressed: () {
        onPressed();
      },
    );
  }
}

class RecordLabel extends StatelessWidget {
  final double recordsWidthInputPadding;
  final double recordsHeightInputPadding;

  const RecordLabel({
    Key? key,
    required this.recordsWidthInputPadding,
    required this.recordsHeightInputPadding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(recordsWidthInputPadding,
          recordsHeightInputPadding, recordsWidthInputPadding, 0),
      child: Text(
        MainTexts.recordsText,
        style: TextStyle(
          color: Colors.grey[500],
          fontSize: 15,
          fontFamily: Fonts.mainFontFamily,
        ),
      ),
    );
  }
}

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
            iconSize: 33,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ClearAnswer()));
            },
          )),
    ]);
  }
}
