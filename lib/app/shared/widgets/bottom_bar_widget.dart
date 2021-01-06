import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:interLibras/app/shared/utils/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: ThemeApp.accentColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {
              if (ModalRoute.of(context).settings.name != '/home') {
                Modular.to.popAndPushNamed('/home');
              }
            },
            icon: Icon(
              Icons.home,
              color: ModalRoute.of(context).settings.name == '/home'
                  ? ThemeApp.primaryColor
                  : ThemeApp.getThemeData.disabledColor,
              size: 30,
            ),
          ),
          GestureDetector(
            onTap: () {
              if (ModalRoute.of(context).settings.name != '/academy') {
                Modular.to.popAndPushNamed('/academy');
              }
            },
            child: SvgPicture.asset(
              'assets/icons/school.svg',
              color: ModalRoute.of(context).settings.name == '/academy'
                  ? ThemeApp.primaryColor
                  : ThemeApp.getThemeData.disabledColor,
              height: 25,
              width: 25,
            ),
          ),
          GestureDetector(
            onTap: () {
              if (ModalRoute.of(context).settings.name != '/interpreter') {
                Modular.to.popAndPushNamed('/interpreter');
              }
            },
            child: SvgPicture.asset(
              'assets/icons/interpreter.svg',
              color: ModalRoute.of(context).settings.name == '/interpreter'
                  ? ThemeApp.primaryColor
                  : ThemeApp.getThemeData.disabledColor,
              height: 28,
              width: 28,
            ),
          ),
          IconButton(
            onPressed: () {
              if (ModalRoute.of(context).settings.name != '/profile') {
                Modular.to.popAndPushNamed('/profile');
              }
            },
            icon: Icon(
              Icons.person,
              color: ModalRoute.of(context).settings.name == '/profile'
                  ? ThemeApp.primaryColor
                  : ThemeApp.getThemeData.disabledColor,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
