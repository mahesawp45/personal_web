import 'package:flutter/material.dart';
import 'package:my_web_porto/resources/r.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({
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
        color: Resource.appColors.alertColor,
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
      child: Text(
        Resource.appDummy.lorem,
      ),
    );
  }
}
