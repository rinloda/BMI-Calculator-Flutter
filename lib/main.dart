import 'package:flutter/material.dart';
//import 'package:hexcolor/hexcolor.dart';
import 'input_page.dart';
//import 'package:syncfusion_flutter_sliders/sliders.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        primaryColor: Color(0xFFEDEDED),
        scaffoldBackgroundColor: Color(0xFFEDEDED),
        //accentColor: Color(0xFFEDEDED),

      ),
      home: InputPage(),
    );
  }
}


