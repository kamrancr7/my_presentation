import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'my_widgets/my_bullet_widget.dart';

class SlideFive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          Container(
            color: Colors.blue,
            width: MediaQuery.of(context).size.width * 0.35,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    child: Image.asset('assets/logo2.png'),
                  ),
                  Text("Flutter vs Other Frameworks",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 60,
                          fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.65,
            child: Column(
              children: <Widget>[
                SizedBox(height: MediaQuery.of(context).size.width * 0.04),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      child: Image.asset('assets/logo.png'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "FLUTTER WITH YOU",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 34),
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.12),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Web View",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 38),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Container(
                          child: ListTile(
                            leading: MyBullet(),
                            title: Text(
                              "Cordova",
                              style: TextStyle(fontSize: 28),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Container(
                          child: ListTile(
                            leading: MyBullet(),
                            title: Text(
                              "Ionic",
                              style: TextStyle(fontSize: 28),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Container(
                          child: ListTile(
                            leading: MyBullet(),
                            title: Text(
                              "PhoneGap",
                              style: TextStyle(fontSize: 28),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Other Platform",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 38),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Container(
                          child: ListTile(
                            leading: MyBullet(),
                            title: Text(
                              "Xamarin",
                              style: TextStyle(fontSize: 28),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Container(
                          child: ListTile(
                            leading: MyBullet(),
                            title: Text(
                              "React Native",
                              style: TextStyle(fontSize: 28),
                            ),
                          ),
                        ),
                      )
//                    Text(". Flutter is a Google UI toolkit for building beautiful, \nnatively compiled applications for mobile, web and desktop from a single codebase."),
//                    Text(". Flutter apps are build using Dart, a simple object oriented programming language."),
//                    Text(". Platform Differences.")
                    ],
                  ),
                )
              ],
            ),
          ),
          // ),
        ],
      ),
    );
  }
}
