import 'package:flutter/material.dart';
import 'package:my_web_porto/resources/r.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Container(
      height: height,
      width: width,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
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
            right: 0,
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Resource.appColors.alertColor,
              ),
            ),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: CircleAvatar(
              radius: 130,
              backgroundColor: Resource.appColors.greenColor,
            ),
          ),
          SingleChildScrollView(
            child: SizedBox(
              height: height * 0.9,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Hello 👋',
                        style: TextStyle(
                          fontSize: 140,
                        ),
                      ),
                      Text(
                        "My name is I Ketut Mahesa Widiana Putra. I'm a Software Engineer.",
                        style: TextStyle(
                          fontSize: 40,
                        ),
                      ),
                    ],
                  ),
                  const Text(
                    "Don't forget to drink a water. Have a nice day!",
                    style: TextStyle(
                      fontSize: 20,
                    ),
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
