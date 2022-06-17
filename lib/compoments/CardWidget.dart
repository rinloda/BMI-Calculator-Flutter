import 'package:flutter/material.dart';
import 'constants.dart';
import 'RoundIconButton.dart';


class CardWidget extends StatelessWidget {

  CardWidget({@required this.colour, this.cardChild, this.onPress});
  final onPress;
  final Color colour;
  final Widget cardChild;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: colour,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.white,
                blurRadius: 10,
                spreadRadius: 1,
                offset: Offset(-5, -5)
              ),
              BoxShadow(
                color: shadowBottom,
                  blurRadius: 10,
                  spreadRadius: 1,
                  offset: Offset(5, 5)
              )
            ]
        ),
      ),
    );
  }
}

class CardWidgetAndButton extends StatelessWidget {
  final weight;
  final onPress;

  CardWidgetAndButton({this.weight, this.onPress});

  @override
  Widget build(BuildContext context) {
    return  Expanded(
        child: CardWidget(
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
                    onPress: onPress
                  ),
                  //SizedBox(width: 15,),
                  RoundIconButton(
                    icon: Icons.add,
                    onPress: onPress
                  ),
                ],
              )
            ],
          ),
        ),
        )
    );
  }
}
