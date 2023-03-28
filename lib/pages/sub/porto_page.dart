// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:my_web_porto/resources/r.dart';

class PortoPage extends StatelessWidget {
  const PortoPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return ConstrainedBox(
      constraints: BoxConstraints(
        maxHeight: height,
        maxWidth: width,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  width: width,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Resource.appColors.blueColor,
                    border: Border(
                      top: BorderSide(
                        color: Resource.appColors.darkBgColor,
                        width: 0.5,
                      ),
                      bottom: BorderSide(
                        color: Resource.appColors.darkBgColor,
                        width: 0.5,
                      ),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [],
                  ),
                ),
                const StackTextDecoration(
                  text: "Website",
                ),
              ],
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    border: Border(
                      top: BorderSide(
                        color: Resource.appColors.darkBgColor,
                        width: 0.5,
                      ),
                      bottom: BorderSide(
                        color: Resource.appColors.darkBgColor,
                        width: 0.5,
                      ),
                    ),
                  ),
                ),
                const StackTextDecoration(
                  text: "Website",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class StackTextDecoration extends StatelessWidget {
  const StackTextDecoration({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      child: Stack(
        children: [
          Positioned(
            top: -80,
            child: Text(
              text,
              style: TextStyle(
                color: Resource.appColors.blueColor,
                fontSize: 90,
                shadows: const [
                  Shadow(
                    blurRadius: 1,
                    color: Colors.black,
                    offset: Offset(0, 0),
                  ),
                ],
              ),
            ),
          ),
          Text(
            text,
            style: const TextStyle(
              fontSize: 90,
            ),
          ),
          Positioned(
            top: 80,
            child: Text(
              text,
              style: TextStyle(
                color: Resource.appColors.blueColor,
                fontSize: 90,
                shadows: const [
                  Shadow(
                    blurRadius: 1,
                    color: Colors.black,
                    offset: Offset(0, 0),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 160,
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 90,
                shadows: [],
              ),
            ),
          ),
          Positioned(
            top: 240,
            child: Text(
              text,
              style: TextStyle(
                color: Resource.appColors.blueColor,
                fontSize: 90,
                shadows: const [
                  Shadow(
                    blurRadius: 1,
                    color: Colors.black,
                    offset: Offset(0, 0),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
