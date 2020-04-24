import 'package:flutter/material.dart';

import 'my_widgets/my_bullet_widget.dart';
import 'my_widgets/my_text_widget.dart';

class SlideTwo extends StatelessWidget {
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
                  Text("What is Flutter?",
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
                SizedBox(height: MediaQuery.of(context).size.width * 0.12),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      MyTextWidget(
                        textValue:
                            'Flutter is a Google UI toolkit for building beautiful, natively compiled applications for mobile, web and desktop from a single codebase.',
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      MyTextWidget(
                        textValue:
                            'Flutter apps are build using Dart, a simple object oriented programming language.',
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      MyTextWidget(
                        textValue: 'Platform Differences.',
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      MyTextWidget(
                        textValue: 'Fast Development.',
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      MyTextWidget(
                        textValue: 'Flexible UI.',
                      ),
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
