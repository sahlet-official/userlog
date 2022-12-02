import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_buttonlog/about.dart';

import 'clear_answer.dart';

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
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(
                  MediaQuery.of(context).size.width / 20,
                  MediaQuery.of(context).size.height / 20,
                  MediaQuery.of(context).size.width / 20,
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
                  labelText: "Filter...",
                  labelStyle: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Suisse Int'l",
                  ),
                ),
                onSubmitted: (String value) async {
                  await showDialog<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Thanks!'),
                        content: Text(
                            'You typed "$value", which has length ${value.characters.length}.'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('OK'),
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(
                  MediaQuery.of(context).size.width / 15,
                  MediaQuery.of(context).size.height / 30,
                  MediaQuery.of(context).size.width / 30,
                  0),
              child: Text(
                "records: 0",
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
                  width: MediaQuery.of(context).size.width / 1.1,
                  height: MediaQuery.of(context).size.height / 1.8,
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
                            "log...",
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
                          child: Image(
                            image: AssetImage('assets/images/slider.png'),
                            ),
                        ),
                      ]),
                ),
              ),

                Container(
                  alignment: Alignment.topRight,
                  child: Container(
                    child:IconButton(
                      icon: Image.asset(
                        'assets/images/clearButton.png',
                        fit: BoxFit.cover,
                      ),
                      iconSize: 33,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => ClearAnswer()));
                      },
                    ),
                  ),
                ),

            ]),
            SizedBox(
              height: MediaQuery.of(context).size.height / 20,
              width: MediaQuery.of(context).size.width,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  IconButton(
                    icon: Image.asset(
                      'assets/images/infoButton.png',
                      fit: BoxFit.cover,
                    ),
                    iconSize: 33,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => About()));
                    },
                  ),
                  IconButton(
                    icon: Image.asset(
                      'assets/images/shutdownButton.png',
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
