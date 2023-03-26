import 'package:flutter/material.dart';
import 'package:my_web_porto/resources/r.dart';

class TitleWidget extends StatelessWidget {
  final String title;
  final double? blurRadius;
  final double? fontSize;

  const TitleWidget({
    Key? key,
    required this.title,
    this.blurRadius,
    this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(title,
        style: TextStyle(
          color: Resource.appColors.primaryTextColor,
          fontSize: fontSize ?? 34,
          fontWeight: FontWeight.bold,
          shadows: [
            Shadow(
              blurRadius: blurRadius ?? 25,
              offset: const Offset(10, 0),
              color: Resource.appColors.primaryColor,
            ),
            Shadow(
              blurRadius: blurRadius ?? 25,
              offset: const Offset(-10, 0),
              color: Resource.appColors.secondaryColor,
            ),
          ],
        ));
  }
}
