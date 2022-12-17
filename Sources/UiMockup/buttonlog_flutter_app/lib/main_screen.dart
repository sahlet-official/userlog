import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

import 'about_screen.dart';
import 'assets.dart';
import 'clear_log_confirmation.dart';
import 'texts.dart';
  

class MainActivity extends StatefulWidget {
  @override
  State<MainActivity> createState() => _MainActivityState();
}

class _MainActivityState extends State<MainActivity> {
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
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  focusedBorder: OutlineInputBorder(
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
                    fontFamily: "Suisse Int'l",
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
                  fontFamily: "Suisse Int'l",
                ),
              ),
            ),
            Stack(children: [
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 20),
                  padding: EdgeInsets.all(12),
                  width: textAreaWidthInputPadding,
                  height: textAreaHeightInputPadding,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
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
                              fontFamily: "Suisse Int'l",
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.bottomCenter,
                          padding: EdgeInsets.only(top: 12),
                          child: SvgPicture.asset(Assets.sliderImage),
                        ),
                      ]),
                ),
              ),
              Container(
                alignment: Alignment.topRight,
                child: Container(
                  child: IconButton(
                    icon: SvgPicture.asset(
                      Assets.cleanButtonImage,
                      fit: BoxFit.cover,
                    ),
                    iconSize: 33,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ClearAnswer()));
                    },
                  ),
                ),
              ),
            ]),
            SizedBox(
              height: filterInputPadding,
              width: screenWidth,
            ),
            Container(
              child: Row(
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => About()));
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
            ),
          ],
        ),
      ),
    );
  }
}
