import 'package:flutter/material.dart';
import 'screens/input_page.dart';
import 'package:bmi_calculator/screens/result_page.dart';
import 'compoments/calculator.dart';

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


