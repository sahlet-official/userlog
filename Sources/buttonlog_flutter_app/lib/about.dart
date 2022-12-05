import 'package:flutter/material.dart';


class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: 
      ListView(
        children: <Widget>[
          
          SizedBox(
            height: MediaQuery.of(context).size.height / 20,
            width: MediaQuery.of(context).size.width,
          ),

          Container(
            margin: EdgeInsets.only(left: 0),
            padding: EdgeInsets.only(right: MediaQuery.of(context).size.width / 2),

            child: Row(
             
              mainAxisSize: MainAxisSize.min,
              
              children: <Widget>[
                Container(
                  child: IconButton(
                    icon: Align(
                      alignment: Alignment.bottomLeft,
                      child: Image.asset(
                      'assets/images/exitButtonS.png',
                      fit: BoxFit.cover,
                    ),),
                    iconSize: 51,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),

                Container(
                  child:  Text(
                  "About",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Suisse Int'l",
                  ),
                ),
                ),
              ],
            ),
          ),

          SizedBox(
            height: MediaQuery.of(context).size.height / 20,
            width: MediaQuery.of(context).size.width,
          ),

         
          Center(
            child: Container(
              padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width / 30, 
              MediaQuery.of(context).size.height / 30, MediaQuery.of(context).size.width / 30,
               0),
              child: Text(
                  "Very interesting and important info about app, it's authors etc.",
                  style: TextStyle(
                    color: Colors.white60,
                    fontSize: 20,
                    fontFamily: "Suisse Int'l",
                  ),
                ),
              
            ),
          ),
        ],
      ),
    );
  }
}

