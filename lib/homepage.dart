import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'customwidget/custombutton.dart';
import 'customwidget/customcolomn.dart';
import 'customwidget/customcontainer.dart';
enum g { m, f }
class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}
class _HomeState extends State<Home> {
  final activeColor = Colors.white30;
  final inactiveColor = Colors.white12;
  g? isSelected;
  int height = 160;
  int weight = 60;
  int age = 25;
  String bmi = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          "GFG custom widget",
          style: GoogleFonts.poppins(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(12),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: customcontainer(
                      onTap: () {
                        setState(() {
                          isSelected = g.f; // Female selected
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Text(
                          "Female",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      color: isSelected == g.f ? activeColor : inactiveColor,
                      height: 100,
                      width: 100,
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: customcontainer(
                      onTap: () {
                        setState(() {
                          isSelected = g.m; // Male selected
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Text(
                          "Male",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color:  Colors.white,
                          ),
                        ),
                      ),
                      color: isSelected == g.m ? activeColor : inactiveColor,
                      height: 100,
                      width: 100,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              customcontainer(
                color: inactiveColor,
                height: 100,
                child: customcoloumn(
                  text: "Height is $height cm",
                  child: SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        thumbColor: Colors.green,
                        overlayColor: Color(0x900ff00),
                        thumbShape:
                        RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape:
                        RoundSliderOverlayShape(overlayRadius: 15.0)
                    ),
                    child: Slider(
                        value: height.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        onChanged: (double newValue){
                          setState(() {
                            height=newValue.floor();
                          });
                        }
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                      child: customcontainer(
                          color: inactiveColor,
                          child: customcoloumn(
                              text: "Weight $weight",
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    custombutton(
                                      onTap: (){
                                        setState(() {
                                          weight=weight -1;
                                        });
                                      },
                                      icon: Icons.arrow_upward,
                                    ),
                                    SizedBox(width: 10),
                                    custombutton(
                                      onTap: (){
                                        setState(() {
                                          weight = weight +1;
                                        });
                                      },
                                      icon: Icons.arrow_downward,
                                    ),
                                  ],
                                ),
                              )
                          )
                      )
                  ),
                  SizedBox(width: 10),
                  Expanded(
                      child: customcontainer(
                          color : inactiveColor,
                          child: customcoloumn(
                            text: "Age $age",
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  custombutton(
                                      onTap: (){
                                        setState(() {
                                          age = age -1;
                                        });
                                      },
                                      icon: Icons.arrow_downward),
                                  SizedBox(width: 10),
                                  custombutton(
                                      onTap: (){
                                        setState(() {
                                          age = age +1;
                                        });
                                      },
                                      icon: Icons.arrow_upward),
                                ],
                              ),
                            ),
                          )
                      )
                  )
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: customcontainer(
                      onTap: (){
                        setState(() {
                          bmi = ' ';
                        });
                      },
                      width: 10,
                      child: Text(
                        "Clear",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      color: activeColor,
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: customcontainer(
                      onTap: (){
                        double _bmi = weight/pow(height/100,2);
                        setState(() {
                          bmi = _bmi.toStringAsFixed(1);
                        });
                      },
                      width: double.infinity,
                      child: Text(
                        "Get BMI",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      color: Colors.green,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child:customcontainer(
                  width: double.infinity,
                  child:Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      FittedBox(
                        child: Text(
                          'YOUR BMI IS',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold,color:Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        bmi,
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold,color:Colors.white),
                      )
                    ],
                  ) ,
                  color: inactiveColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
