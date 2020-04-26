import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'my_widgets/my_text_widget.dart';

class SlideEight extends StatelessWidget {
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 170,
                        width: 170,
                        child: Image.asset('assets/logo2.png'),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        "How Flutter interacts with native components",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 60,
                            fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.65,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                SizedBox(height: MediaQuery.of(context).size.height * 0.06),
                MyTextWidget(
                  textValue: 'Removes the Bridge concept.',
                ),
                MyTextWidget(
                  textValue: 'Doesn\'t depend on OEM components.',
                ),
                MyTextWidget(
                  textValue: 'Platform Channels for communication.',
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50,left: 70),
                  child: Image.asset('assets/flutter_flow.png'),
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
