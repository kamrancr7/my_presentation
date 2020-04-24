import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'my_widgets/my_text_widget.dart';

class SlideFour extends StatelessWidget {
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
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 170,
                        width: 170,
                        child: Image.asset('assets/heart.png'),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 170,
                        width: 170,
                        child: Image.asset('assets/dart_logo.png'),
                      ),
                    ],
                  ),
                  Text("Why Dart?",
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
                SizedBox(height: MediaQuery.of(context).size.width * 0.13),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      MyTextWidget(
                        textValue: 'AOT (Ahead of Time).',
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      MyTextWidget(
                        textValue: 'JIT (Just in Time).',
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      MyTextWidget(
                        textValue: 'Avoid seperate layout language.',
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      MyTextWidget(
                        textValue: 'Easy to learn.',
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
