import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final FontWeight fontWeight ;
  final double fontSize;
  final Color color ;
  const CustomText({super.key, required this.text ,
    this.fontWeight = FontWeight.normal,
    this.fontSize = 16.0,
    this.color = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        
        fontWeight: fontWeight,
        fontSize: fontSize,
        color: color,
        fontFamily: 'TenorSans',
      ),
      
      maxLines: 1,
      textAlign: TextAlign.start,
    );
  }
}
