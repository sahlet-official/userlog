import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:user_log/core/assets.dart';
import 'package:user_log/core/fonts.dart';
import 'package:user_log/core/texts.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
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
      //screen width
      double screenWidth = MediaQuery.of(context).size.width;
      //screen height
      double screenHeight = MediaQuery.of(context).size.height;
      
      //filter paddings
      double filterPaddingScreenWidthCoefficient = 1 / 20;
      double filterInputPadding = filterPaddingScreenWidthCoefficient * screenWidth;

      //records paddings
      double recordsPaddingScreenWidthCoefficient = 1 / 15;
      double recordsWidthInputPadding = recordsPaddingScreenWidthCoefficient * screenWidth;
      double recordsPaddingScreenHeightCoefficient = 1 / 30;
      double recordsHeightInputPadding = recordsPaddingScreenHeightCoefficient * screenHeight;

      //textarea paddings
       double textAreaPaddingScreenWidthCoefficient = 1.1;
      double textAreaWidthInputPadding = screenWidth / textAreaPaddingScreenWidthCoefficient;
      double textAreaPaddingScreenHeightCoefficient = 1.8;
      double textAreaHeightInputPadding = screenHeight / textAreaPaddingScreenHeightCoefficient;

    
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(
                  filterInputPadding,
                  filterInputPadding,
                  filterInputPadding,
                  0),
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
                  labelText: Texts.filterText,
                  labelStyle: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: Fonts.mainFontFamily,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(
                  recordsWidthInputPadding,
                  recordsHeightInputPadding,
                  recordsWidthInputPadding,
                  0),
              child: Text(
                Texts.recordsText,
                style: TextStyle(
                  color: Colors.grey[500],
                  fontSize: 15,
                  fontFamily: Fonts.mainFontFamily,
                ),
              ),
            ),
            Stack(children: [
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
                            Texts.logText,
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
                          child: SvgPicture.asset(Assets.sliderImage),
                        ),
                      ]),
                ),
              ),
              Container(
                alignment: Alignment.topRight,
                child: IconButton(
                  icon: SvgPicture.asset(
                    Assets.cleanButtonImage,
                    fit: BoxFit.cover,
                  ),
                  iconSize: 33,
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      '/Clear',
                    );
                  },
                ),
              ),
            ]),
            SizedBox(
              height: filterInputPadding,
              width: screenWidth,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                IconButton(
                  icon: SvgPicture.asset(
                    Assets.infoButtonImage,
                    fit: BoxFit.cover,
                  ),
                  iconSize: 33,
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      '/About',
                    );
                  },
                ),
                IconButton(
                  icon: SvgPicture.asset(
                    Assets.shutdownButtonImage,
                    fit: BoxFit.cover,
                  ),
                  iconSize: 33,
                  onPressed: () {
                    SystemNavigator.pop();
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}