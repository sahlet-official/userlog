import 'package:flutter/material.dart';

import 'texts.dart';

class ClearAnswer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var texts = Texts();
    
    return Scaffold(
      body: Column(
        children: <Widget>[
          Center(
            child: Container(
              padding: EdgeInsets.fromLTRB(60, 270, 0, 0),
              child: const Text(
                Texts.clearQuestionText,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Suisse Int'l",
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 100),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      Texts.canselButtonText,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Suisse Int'l",
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      Texts.clearButtonText,
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Suisse Int'l",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
