import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class customtext extends StatelessWidget{
  customtext({
    required this.color,
    required this.fontWeight,
    required this.align
  });
  final Color color;
  final FontWeight fontWeight;
  final Align align;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return Scaffold(
      body: Align(
        alignment: align.alignment,
        child: Text(
          "",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20
          ),
        ),
      ),
    );
  }

}