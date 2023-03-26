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
            child: Container(
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
                children: const [
                  Text("Website"),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Resource.appColors.greenColor,
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
          ),
        ],
      ),
    );
  }
}
