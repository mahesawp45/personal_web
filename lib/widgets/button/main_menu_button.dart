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
        borderRadius: BorderRadius.circular(100),
        color: Resource.appColors.yellowColor,
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.yellow.shade500,
        //     blurRadius: 10,
        //     spreadRadius: 2,
        //     offset: const Offset(0, 0),
        //   )
        // ],
      ),
    );
  }
}
