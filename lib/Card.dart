import 'package:flutter/material.dart';
import 'constants.dart';

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