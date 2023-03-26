// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_web_porto/pages/sub/contact_page.dart';
import 'package:my_web_porto/pages/sub/gallery_page.dart';

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
  final PageController _pageController = PageController();
  String? title;
  int index = 0;
  bool _isActivePorto = false;
  bool _isActiveGallery = false;
  bool _isActiveContact = false;
  bool _isHoveringPorto = false;
  bool _isHoveringGallery = false;
  bool _isHoveringContact = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraint) {
        return Stack(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: _buildSideMenu(
                    constraint,
                    index: index,
                    pageController: _pageController,
                  ),
                ),
                VerticalDivider(
                  color: Resource.appColors.darkBgColor,
                  width: 1,
                ),
                Expanded(
                  flex: constraint.maxWidth < 992 ? 4 : 8,
                  child: _buildHomeScreen(),
                ),
              ],
            ),
          ],
        );
      }),
    );
  }

  Widget _buildSideMenu(
    BoxConstraints constraint, {
    required PageController pageController,
    required int index,
  }) {
    var paddingTop = MediaQuery.of(context).padding.top;

    return Container(
      decoration: const BoxDecoration(),
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

                _isActivePorto = false;

                _isActiveGallery = false;

                _isActiveContact = false;

                pageController.animateToPage(
                  index,
                  duration: const Duration(milliseconds: 300),
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
                horizontal: constraint.maxWidth < 992 ? 10 : 5,
                vertical: 20,
              ),
              child: Column(
                children: [
                  MenuButton(
                    isClicked: _isActivePorto,
                    isHover: _isHoveringPorto,
                    label: "Portfolio Apps",
                    onTap: () {
                      setState(() {
                        index = 1;
                        _isActivePorto = true;

                        _isActiveGallery = false;

                        _isActiveContact = false;

                        pageController.animateToPage(
                          index,
                          duration: const Duration(milliseconds: 300),
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
                    isClicked: _isActiveGallery,
                    isHover: _isHoveringGallery,
                    label: "Personal Gallery",
                    onTap: () {
                      setState(() {
                        index = 2;
                        _isActiveGallery = true;

                        _isActivePorto = false;

                        _isActiveContact = false;

                        pageController.animateToPage(
                          index,
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      });
                    },
                    onEnter: (_) => setState(() {
                      _isHoveringGallery = true;
                    }),
                    onExit: (_) => setState(() {
                      _isHoveringGallery = false;
                    }),
                  ),
                  MenuButton(
                    isClicked: _isActiveContact,
                    isHover: _isHoveringContact,
                    label: Resource.appLabel.contact,
                    onTap: () {
                      setState(() {
                        index = 3;
                        _isActiveContact = true;

                        _isActivePorto = false;

                        _isActiveGallery = false;

                        pageController.animateToPage(
                          index,
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      });
                    },
                    onEnter: (_) => setState(() {
                      _isHoveringContact = true;
                    }),
                    onExit: (_) => setState(() {
                      _isHoveringContact = false;
                    }),
                  ),
                  Expanded(
                    child: SizedBox(
                      child: VerticalDivider(
                        color: Resource.appColors.darkBgColor,
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
            decoration: const BoxDecoration(),
            child: PageView(
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              controller: _pageController,
              children: const [
                WelcomePage(),
                PortoPage(),
                GalleryPage(),
                ContactPage(),
              ],
            ),
          ),
        ),
        Container(
          height: height,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            border: Border(
              left: BorderSide(
                color: Resource.appColors.darkBgColor,
                width: 1,
              ),
            ),
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
        return Resource.appColors.darkBgColor;
      }

      if (isClicked) {
        return Resource.appColors.darkBgColor;
      }

      return Resource.appColors.darkBgColor.withOpacity(0.8);
    }

    return Transform.rotate(
      angle: -90 * pi / 180,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MouseRegion(
              onEnter: onEnter,
              onExit: onExit,
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: onTap,
                child: Container(
                  margin: const EdgeInsets.only(bottom: 5),
                  child: AnimatedSize(
                    duration: const Duration(milliseconds: 100),
                    curve: Curves.fastOutSlowIn,
                    child: Text(
                      label,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: isClicked ? 20 : 10,
                        color: handleColor(),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
