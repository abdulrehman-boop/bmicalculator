import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class customcontainer extends StatelessWidget{
  customcontainer({
    required this.child,
    this.onTap,
    this.color,
    this.height,
    this.width,
  });
  final VoidCallback? onTap;
  final Widget child;
  final double? height;
  final double? width;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width:width,
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        child :child,
      ),
    );
  }
}