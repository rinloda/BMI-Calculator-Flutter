import 'dart:math';

import 'package:flutter/material.dart';

class CalculatorBrain {
  CalculatorBrain({@required this.height,@required this.weight});
  final int height;
  final int weight;
  double _bmi = 0;

  String calculatorBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult(){
    if (this._bmi >= 25) {
      return 'Overweight';
    } else if (this._bmi > 18.5){
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

}
