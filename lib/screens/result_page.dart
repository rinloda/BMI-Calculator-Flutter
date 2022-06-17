import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:flutter/material.dart';
import '../compoments/constants.dart';


class ResultPage extends StatelessWidget {
  ResultPage({@required this.bmiResult, @required this.resultText});
  final String bmiResult;
  final String resultText;
  double value = 10.0;
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
                          Stack(
                            children: [
                              Container(
                                height: 300,
                                width: 300,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(300),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.white,
                                        blurRadius: 10,
                                        spreadRadius: 1,
                                        offset: Offset(-5, -5)
                                    ),
                                    BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 10,
                                        spreadRadius: 1,
                                        offset: Offset(5, 5)
                                    )
                                  ],
                                  color: Colors.white,
                                ),
                                child:
                                Container(
                                  padding: EdgeInsets.all(15),
                                  child: SfRadialGauge(axes: <RadialAxis>[
                                    RadialAxis(
                                        minimum: 4,
                                        maximum: 40,
                                        interval: 2,
                                        startAngle: 270,
                                        endAngle: 270,
                                        showTicks: false,
                                        showLabels: true,
                                        axisLineStyle: AxisLineStyle(thickness: 20),
                                        pointers: <GaugePointer>[
                                          RangePointer(
                                              value: this.value,
                                              width: 20,
                                              color: this.value < 18 ? Colors.orange : this.value >= 18 && this.value <= 25 ? Color(0xFF74D4E0): Colors.red,
                                              enableAnimation: true,
                                              animationDuration: 4000,
                                              cornerStyle: CornerStyle.bothCurve)
                                        ],
                                        annotations: <GaugeAnnotation>[
                                          // GaugeAnnotation(
                                          //     widget: Column(
                                          //       children: <Widget>[
                                          //         Container(
                                          //             width: 50.00,
                                          //             height: 50.00,
                                          //             decoration: new BoxDecoration(
                                          //               image: new DecorationImage(
                                          //                 image: ExactAssetImage('images/sun.png'),
                                          //                 fit: BoxFit.fitHeight,
                                          //               ),
                                          //             )),
                                          //         Padding(
                                          //           padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                                          //           child: Container(
                                          //             child: Text('73°F',
                                          //                 style: TextStyle(
                                          //                     fontWeight: FontWeight.bold, fontSize: 25)),
                                          //           ),
                                          //         )
                                          //       ],
                                          //     ),
                                          //     angle: 270,
                                          //     positionFactor: 0.1)
                                        ])
                                  ]
                                  ),
                                ),
                              ),

                            ],
                          )
                        ],
                      ),)),


              ]
          ),
        )
    );
  }
}



