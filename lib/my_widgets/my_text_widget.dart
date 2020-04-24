import 'package:flutter/material.dart';
import 'my_bullet_widget.dart';

class MyTextWidget extends StatelessWidget{

  final String textValue;

  MyTextWidget({this.textValue});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        leading: MyBullet(),
        title: Text(
          textValue,
          style: TextStyle(fontSize: 28),
        ),
      ),
    );
  }
}