import 'package:flutter/material.dart';
import 'package:my_web_porto/resources/r.dart';

class MainMenuButton extends StatelessWidget {
  final double? size;

  const MainMenuButton({
    Key? key,
    this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size ?? 45,
      height: size ?? 45,
      decoration: BoxDecoration(
        border: Border.all(
          color: Resource.appColors.darkBgColor,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(100),
        color: Resource.appColors.yellowColor,
      ),
    );
  }
}
