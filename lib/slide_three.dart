import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'my_widgets/my_text_widget.dart';

class SlideThree extends StatelessWidget {
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
                  Text("Everything is a Widget",
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
                SizedBox(height: MediaQuery.of(context).size.width * 0.04),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      MyTextWidget(
                        textValue: 'In Flutter everything is a Widget (Text, Button, Image...).',
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      MyTextWidget(
                        textValue: 'Widgets are the basic building blocks of a Flutter app\'s user interface.',
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      MyTextWidget(
                        textValue: 'Widgets arrange in a hierarchical order to be displayed onto the screen.',
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width/4,
                            height: MediaQuery.of(context).size.width/4,
                            child: Image.asset('assets/app_diagram.png'),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width/4,
                            height: MediaQuery.of(context).size.width/4,
                            child: Image.asset('assets/flow_diagram.png'),
                          ),
                        ],
                      )
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
