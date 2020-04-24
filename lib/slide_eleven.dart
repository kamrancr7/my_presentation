import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'my_widgets/my_text_widget.dart';

class SlideEleven extends StatelessWidget {
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
                    height: 170,
                    width: 170,
                    child: Image.asset('assets/logo2.png'),
                  ),
                  Text("Thank You",
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
                SizedBox(height: MediaQuery.of(context).size.width * 0.13),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Github Link',
                        style: TextStyle(fontSize: 28),
                      ),
                      Text(
                        'https://github.com/kamrancr7/my_presentation',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Medium Link',
                        style: TextStyle(fontSize: 28),
                      ),
                      Text(
                        'https://medium.com/rive/building-an-interactive-login-screen-with-flare-flutter-749db628bb51',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      SizedBox(height: 30,),
                      Center(
                        child: Text(
                          'Stay Safe Stay Home',
                          style: TextStyle(fontSize: 50,color: Colors.red),
                        ),
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
