import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final text;
  final textColor;

  TextWidget({@required this.text, this.textColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text, style: TextStyle(
          fontSize: 25,
          color: textColor,
        ),
        )
      ],
    );
  }
}