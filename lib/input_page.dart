//import 'dart:ffi';

import 'package:flutter/material.dart';
import 'Card.dart';
import 'TextWidget.dart';
import 'constants.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender {
  male,
  female
}
enum Button {
  plus,
  minus
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height = 150;
  int weight = 50;
  int age = 25;
  //double _value = 150.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'BMI Calculator',
            style: TextStyle(color: textColor),
          ),
          backgroundColor: Color(0xFFEDEDED),

          //backgroundColor: Color(0xFFEDEDED),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              // Gender Row
              Flexible(
                flex: 1,
                fit: FlexFit.loose,
                child: Container(
                  height: 100,
                  child: Row(
                    children: [
                      Expanded(
                          child: CardWidget(
                            onPress: (){
                              setState((){
                                selectedGender = Gender.male;
                              });
                            },
                            colour: selectedGender == Gender.male ? activeColor : backgroundColor,
                            cardChild: TextWidget(text: "Male", textColor: selectedGender == Gender.male ? backgroundColor :textColor,),
                          ),
                      ),
                      Expanded(
                          child: CardWidget(
                            onPress: (){
                              setState((){
                                selectedGender = Gender.female;
                              });
                            },
                            colour: selectedGender == Gender.female ? activeColor : backgroundColor,
                            cardChild: TextWidget(text: "Female",textColor: selectedGender == Gender.female ? backgroundColor :textColor,),
                          )

                      ),
                    ],
                  ),
                ),
              ),
              // Height, Weight, Age Row
              Flexible(
                flex:3,
                child:
                 Row(children: [
                   // Height Area
                  Expanded(child: CardWidget(
                    colour: backgroundColor,
                    cardChild: Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        //mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Height", style: TextStyle(
                            fontSize: 25,
                            color: textColor,
                          ),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(height.toString(), style: numberTextStyle,),
                              Text("cm", style: measureTextStyle,)
                            ],
                          ),
                          Container(
                            height: 300,
                            child: SfSlider.vertical(
                                inactiveColor: inactiveSlider,
                                activeColor: activeColor,
                                min: 120.0,
                                max: 210.0,
                                value: height.toDouble(),
                                interval: 20,
                                showTicks: true,
                                showLabels: true,
                                enableTooltip: true,
                                minorTicksPerInterval: 1,
                                onChanged: (dynamic newValue){
                                  setState(() {
                                    height = newValue.round();
                                  });
                                }),
                          ),
                        ],
                      ),
                    )

                  )),
                  Expanded(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      // Weight
                      Expanded(child: CardWidget(
                        colour: backgroundColor,
                        cardChild: Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("Weight", style: TextStyle(
                                fontSize: 25,
                                color: textColor,
                              ),),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(weight.toString(), style: numberTextStyle,),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  RoundIconButton(
                                    icon: Icons.remove,
                                    onPress: (){
                                      setState((){
                                        weight--;
                                      });
                                    },),
                                  //SizedBox(width: 15,),
                                  RoundIconButton(
                                    icon: Icons.add,
                                    onPress: (){
                                      setState((){
                                        weight++;
                                      });
                                    },
                                  ),
                                ],
                              )
                          ],
                      ),
                        ),)),
                      // Age
                      Expanded(child: CardWidget(colour: backgroundColor,
                        cardChild: Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("Age", style: TextStyle(
                                fontSize: 25,
                                color: textColor,
                              ),),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(age.toString(), style: numberTextStyle,)
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  RoundIconButton(icon: Icons.remove, onPress: (){
                                    setState((){
                                      age--;
                                    });
                                  }),
                                  RoundIconButton(icon: Icons.add, onPress: (){
                                    setState((){
                                      age++;
                                    });
                                  })
                                ],
                              )
                            ],
                          ),
                        ),)
                      )
                    ],
                  )
                  )
                  ],
                )
              ),
              Flexible(
                flex: 1,
                fit: FlexFit.loose,
                child: Container(
                    height: 100,
                    width: double.infinity,
                    child: CardWidget(colour: activeColor,
                    cardChild: TextWidget(text: "Let's begin", textColor: backgroundColor,),)
                ),
              )
            ],
          ),
        ));
  }
}

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function onPress;
  RoundIconButton({@required this.icon, @required this.onPress});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon, size: 30, color: textColor,),
      onPressed: onPress,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: backgroundColor,
    );
  }
}



