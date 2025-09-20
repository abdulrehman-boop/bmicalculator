import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class customcoloumn extends StatelessWidget{
  customcoloumn({
    required this.child,
    required this.text,
  });
  final String text;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return Column(
      children: [
        Text(
          text,style: GoogleFonts.poppins(
            color:Colors.white
        ),
        ),
        child
      ],
    );
  }

}