import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'my_widgets/my_text_widget.dart';

class SlideSix extends StatelessWidget {
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
                        width: MediaQuery.of(context).size.width/10,
                        child: Image.asset('assets/corodova_logo.png'),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 170,
                        width: MediaQuery.of(context).size.width/10,
                        child: Image.asset(
                          'assets/ionic_logo.png',
                          color: Colors.purple,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 170,
                        width: MediaQuery.of(context).size.width/10,
                        child: Image.asset('assets/phonegap_logo.png'),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        "How Web View Frameworks interact with native components",
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
                SizedBox(height: MediaQuery.of(context).size.height * 0.03),
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
                SizedBox(height: MediaQuery.of(context).size.width * 0.09),
                MyTextWidget(
                  textValue: 'It\'s a Web Site.',
                ),
                MyTextWidget(
                  textValue: 'Runs in the Platform WebView.',
                ),
                MyTextWidget(
                  textValue:
                      'Bridge needed to communicate with Platform Device Services.',
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50, left: 70),
                  child: Image.asset('assets/web_view.png'),
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
