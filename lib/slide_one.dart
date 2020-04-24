import 'package:flutter/material.dart';

class SlideOne extends StatelessWidget {
  List<Color> _colors = [Colors.white, Colors.blue[100]];
  List<double> _stops = [0.0, 0.7];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: _colors, stops: _stops)),
        child: Stack(
          children: <Widget>[
            Positioned(
                left: 30,
                top: 30,
                child: Container(
                  height: 50,
                  width: 50,
                  child: Image.asset('assets/logo.png'),
                )),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Image.asset('assets/logo2.png'),
                    width: MediaQuery.of(context).size.width/2,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width/2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'How Flutter is Different from \nother Frameworks',
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 70,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'By Kamran Ali',
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}
