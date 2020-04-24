import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class SlideTen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var data = [
      GraphData(name: 'Net Core', color: Colors.green, percentage: 77.2),
      GraphData(name: 'Torch/PyTorch', color: Colors.grey, percentage: 77.1),
      GraphData(name: 'Flutter', color: Colors.blue, percentage: 75.4),
      GraphData(name: 'Pandas', color: Colors.orange, percentage: 74.7),
      GraphData(name: 'TensorFlow', color: Colors.indigo, percentage: 73),
      GraphData(name: 'Node.js', color: Colors.cyan, percentage: 72.1),
      GraphData(name: 'Apache Spark', color: Colors.brown, percentage: 63.5),
      GraphData(name: 'React Native', color: Colors.deepPurple, percentage: 62.5),
      GraphData(name: 'Ansible', color: Colors.teal, percentage: 61.7),
      GraphData(name: '.Net', color: Colors.pinkAccent, percentage: 61),
    ];

    var series = [
      charts.Series(
        domainFn: (GraphData clickData, _) => clickData.name,
        measureFn: (GraphData clickData, _) => clickData.percentage,
        colorFn: (GraphData clickData, _) => clickData.color,
        id: 'Clicks',
        data: data,
      ),
    ];

    var chart = charts.BarChart(
      series,
      animate: true,
      animationDuration: Duration(seconds: 2),
      defaultRenderer: charts.BarLaneRendererConfig(
          cornerStrategy: const charts.ConstCornerStrategy(30)),
    );

    var chartWidget = Padding(
      padding: EdgeInsets.all(32.0),
      child: SizedBox(
        height: 600.0,
        child: chart,
      ),
    );

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
                        height: 220,
                        width: 220,
                        child: Image.asset('assets/stack_logo.png'),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Most loved framework of 2019 by StackOverflow",
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
                SizedBox(height: MediaQuery.of(context).size.width * 0.07),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: chartWidget,
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

class GraphData {
  final String name;
  final double percentage;
  final charts.Color color;

  GraphData({this.name, this.percentage, Color color})
      : this.color = charts.Color(
            r: color.red, g: color.green, b: color.blue, a: color.alpha);
}
