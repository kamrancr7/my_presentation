import 'package:flutter/material.dart';
import 'package:my_presentation/slide_eight.dart';
import 'package:my_presentation/slide_eleven.dart';
import 'package:my_presentation/slide_five.dart';
import 'package:my_presentation/slide_four.dart';
import 'package:my_presentation/slide_nine.dart';
import 'package:my_presentation/slide_one.dart';
import 'package:my_presentation/slide_seven.dart';
import 'package:my_presentation/slide_six.dart';
import 'package:my_presentation/slide_ten.dart';
import 'package:my_presentation/slide_three.dart';
import 'package:my_presentation/slide_two.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Web for Slides',
      theme: ThemeData(
        fontFamily: "Calibri",
        textTheme: TextTheme(
          display1: TextStyle(color: Colors.black),
          body1: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      home: PageView(
        children: <Widget>[
          SlideOne(),
          SlideTwo(),
          SlideThree(),
          SlideFour(),
          SlideFive(),
          SlideSix(),
          SlideSeven(),
          SlideEight(),
          SlideNine(),
          SlideTen(),
          SlideEleven()
        ],
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
