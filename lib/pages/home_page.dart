// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:my_web_porto/pages/sub/porto_page.dart';
import 'package:my_web_porto/pages/sub/welcome_page.dart';
import 'package:my_web_porto/resources/r.dart';
import 'package:my_web_porto/widgets/button/main_menu_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int? height;
  int? weight;
  int? age;

  final PageController _pageController = PageController();
  String? title;
  int index = 0;
  bool _isActive = false;
  bool _isHoveringPorto = false;
  bool _isHoveringGallery = false;
  final bool _isHoveringArt = false;
  final bool _isHoveringContact = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final widthTombol = MediaQuery.of(context).size.width;
    var paddingTop = MediaQuery.of(context).padding.top;
    var spacerMenu = MediaQuery.of(context).size.height * 0.1;

    return Scaffold(
      body: LayoutBuilder(builder: (context, constraint) {
        return Row(
          children: [
            Expanded(
              flex: 1,
              child: _buildSideMenu(
                paddingTop,
                spacerMenu,
                context,
                constraint,
                index: index,
                pageController: _pageController,
              ),
            ),
            Expanded(
              flex: constraint.maxWidth < 992 ? 4 : 8,
              child: _buildHomeScreen(),
            ),
          ],
        );
      }),
    );
  }

  Widget _buildSideMenu(
    double paddingTop,
    double spacerMenu,
    BuildContext context,
    BoxConstraints constraint, {
    required PageController pageController,
    required int index,
  }) {
    double height = MediaQuery.of(context).size.height;

    return Container(
      decoration: BoxDecoration(
        color: Resource.appColors.bgColor3,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: paddingTop + (constraint.maxWidth < 992 ? 10 : 20)),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              child: const MainMenuButton(),
              onTap: () {
                index = 0;

                pageController.animateToPage(
                  index,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                );
                setState(() {});
              },
            ),
          ),
          // SizedBox(height: spacerMenu),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: constraint.maxWidth < 992 ? 10 : 20,
                vertical: 20,
              ),
              child: Column(
                children: [
                  MenuButton(
                    isClicked: _isActive,
                    isHover: _isHoveringPorto,
                    label: "Portfolio Apps",
                    onTap: () {
                      setState(() {
                        index = 1;
                        _isActive = index == 1;
                        pageController.animateToPage(
                          index,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut,
                        );
                      });
                    },
                    onEnter: (_) => setState(() {
                      _isHoveringPorto = true;
                    }),
                    onExit: (_) => setState(() {
                      _isHoveringPorto = false;
                    }),
                  ),
                  MenuButton(
                    isClicked: _isActive,
                    isHover: _isHoveringGallery,
                    label: "Personal Gallery",
                    onTap: () {
                      index = 2;
                      _isActive = index == 2;
                    },
                    onEnter: (_) => setState(() {
                      _isHoveringGallery = true;
                    }),
                    onExit: (_) => setState(() {
                      _isHoveringGallery = false;
                    }),
                  ),
                  GestureDetector(
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      child: Text(
                        "Fun Art",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Resource.appColors.primaryTextColor,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      child: Text(
                        "Contact",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Resource.appColors.primaryTextColor,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      child: VerticalDivider(
                        color: Resource.appColors.primaryTextColor,
                        width: 2,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  CupertinoSwitch(
                    activeColor: Colors.white,
                    trackColor: Colors.white,
                    thumbColor: Resource.appColors.yellowColor,
                    value: false,
                    onChanged: (value) {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  _buildHomeScreen() {
    double height = MediaQuery.of(context).size.height;

    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Resource.appColors.bgColor3,
            ),
            child: PageView(
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              controller: _pageController,
              children: const [
                WelcomePage(),
                PortoPage(),
              ],
            ),
          ),
        ),
        Container(
          height: height,
          margin: const EdgeInsets.only(left: 10),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Resource.appColors.yellowColor,
          ),
          child: Image.asset(
            Resource.appImages.me,
            height: height * 0.8,
            width: height * 0.5,
          ),
        )
      ],
    );
  }
}

class MenuButton extends StatelessWidget {
  const MenuButton({
    Key? key,
    this.onEnter,
    this.onExit,
    required this.label,
    required this.isHover,
    required this.isClicked,
    required this.onTap,
  }) : super(key: key);

  final void Function(PointerEnterEvent)? onEnter;
  final void Function(PointerExitEvent)? onExit;
  final String label;
  final bool isHover;
  final bool isClicked;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    Color handleColor() {
      if (isHover) {
        return Resource.appColors.primaryTextColor;
      }

      if (isClicked) {
        return Resource.appColors.primaryTextColor;
      }

      return Resource.appColors.primaryTextColor.withOpacity(0.8);
    }

    return MouseRegion(
      onEnter: onEnter,
      onExit: onExit,
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          margin: const EdgeInsets.only(bottom: 20),
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: handleColor(),
            ),
          ),
        ),
      ),
    );
  }
}
