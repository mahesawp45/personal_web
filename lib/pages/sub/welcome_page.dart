import 'package:flutter/material.dart';
import 'package:my_web_porto/resources/r.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Resource.appColors.primaryTextColor,
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(
            50,
          ),
          bottomLeft: Radius.circular(
            50,
          ),
        ),
      ),
      child: Text(
        Resource.appDummy.lorem,
      ),
    );
  }
}
