import 'package:flutter/material.dart';
import 'package:my_web_porto/resources/r.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: Resource.appColors.primaryColor,
        border: Border(
          top: BorderSide(
            color: Resource.appColors.darkBgColor,
            width: 1,
          ),
          bottom: BorderSide(
            color: Resource.appColors.darkBgColor,
            width: 1,
          ),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: -100,
            left: -100,
            child: CircleAvatar(
              radius: height * 0.4,
              backgroundColor:
                  Resource.appColors.primaryTextColor.withOpacity(0.2),
            ),
          ),
          Positioned(
            bottom: 10,
            right: 10,
            child: CircleAvatar(
              radius: height * 0.1,
              backgroundColor:
                  Resource.appColors.primaryTextColor.withOpacity(0.2),
            ),
          ),
          const Center(
            child: Text(
              "kt.mahesa@gmail.com ->",
              style: TextStyle(
                fontSize: 50,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
