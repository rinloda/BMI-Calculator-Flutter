import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:bmi_calculator/Card.dart';
import 'calculator.dart';

class ResultPage extends StatelessWidget {
  ResultPage({@required this.bmiResult, @required this.resultText});
  final String bmiResult;
  final String resultText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'BMI Results',
            style: TextStyle(color: textColor),
          ),
          backgroundColor: Color(0xFFEDEDED),
        ),
        body: Container(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                    child: Card(
                      color: backgroundColor,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(bmiResult , style: numberTextStyle,),
                          SizedBox(height: 100,),
                          Text(resultText, style: measureTextStyle,),
                          SizedBox(height: 100,)

                        ],
                      ),))
              ]
          ),
        )
    );
  }
}



