import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class custombutton extends StatelessWidget{
  custombutton({
    required this.onTap,
    this.color,
    required this.icon,
  });
  final VoidCallback? onTap;
  final Color? color;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: color,
        ),
        child : Icon(icon,color: Colors.white),
      ),
    );
  }

}