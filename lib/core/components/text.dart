import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final FontWeight fontWeight;
  final double fontSize;
  final Color color;
  final double letterSpace;
  final TextOverflow overFlow;
  final int maxLine;
  const CustomText({
    super.key,
    required this.text,
    this.fontWeight = FontWeight.normal,
    this.fontSize = 16.0,
    this.color = Colors.white,
    this.letterSpace = 0.0,
    this.overFlow = TextOverflow.ellipsis,
    this.maxLine = 1
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        letterSpacing: letterSpace,

        fontWeight: fontWeight,
        fontSize: fontSize,
        color: color,
        fontFamily: 'TenorSans',
        overflow: overFlow,
      ),

      maxLines: maxLine,
      textAlign: TextAlign.start,
    );
  }
}
