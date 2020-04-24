import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SlideNine extends StatelessWidget {
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
                    child: Text("The Difference",
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
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Table(
                    border: TableBorder.all(color: Colors.white),
                    defaultColumnWidth: FlexColumnWidth(0.25),
                    children: [
                      TableRow(children: [
                        tableWidget('Flutter',Colors.blue,Colors.white),
                        tableWidget('React Native',Colors.blue,Colors.white),
                        tableWidget('Other Frameworks',Colors.blue,Colors.white),
                      ]),
                      TableRow(children: [
                        tableWidget('No Bridge Needed',Colors.blue[100],Colors.black),
                        tableWidget('Bridge Needed',Colors.blue[100],Colors.black),
                        tableWidget('Bridge Needed',Colors.blue[100],Colors.black),
                      ]),
                      TableRow(children: [
                        tableWidget('Great Performance',Colors.blue[50],Colors.black),
                        tableWidget('Good Performance',Colors.blue[50],Colors.black),
                        tableWidget('Low Performance',Colors.blue[50],Colors.black),
                      ]),
                      TableRow(children: [
                        tableWidget('Rich Collection of pre build widgets',Colors.blue[100],Colors.black),
                        tableWidget('Some pre build components',Colors.blue[100],Colors.black),
                        tableWidget('-',Colors.blue[100],Colors.black),
                      ]),
                      TableRow(children: [
                        tableWidget('No Optimization required',Colors.blue[50],Colors.black),
                        tableWidget('Requires separate optimization for each platform',Colors.blue[50],Colors.black),
                        tableWidget('-',Colors.blue[50],Colors.black),
                      ]),
                      TableRow(children: [
                        tableWidget('Well organized documentation',Colors.blue[100],Colors.black),
                        tableWidget('Disorganized and clumsy',Colors.blue[100],Colors.black),
                        tableWidget('-',Colors.blue[100],Colors.black),
                      ]),
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

  Widget tableWidget(String name, Color cellColor, Color textColor){
    return Container(
      child: Center(
        child: Text(
          name,
          textAlign: TextAlign.center,
          style: TextStyle(color: textColor),
        ),
      ),
      color: cellColor,
      height: 60,
    );
  }

}
