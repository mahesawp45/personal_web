import 'package:flutter/material.dart';
import 'package:my_web_porto/resources/r.dart';

class PortoPage extends StatelessWidget {
  const PortoPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: Colors.red,
      ),
      child: Text(
        Resource.appDummy.lorem,
      ),
    );
  }
}
