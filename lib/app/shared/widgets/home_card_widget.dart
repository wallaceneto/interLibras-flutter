import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:interLibras/app/shared/utils/size_config.dart';
import 'package:interLibras/app/shared/utils/theme.dart';

class HomeCardWidget extends StatelessWidget {
  final String name;
  final String assetName;
  final Function action;
  final Function iconPressed;
  const HomeCardWidget(
      {Key key,
      @required this.name,
      @required this.assetName,
      @required this.iconPressed,
      @required this.action})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              blurRadius: 10,
              offset: Offset(1, 1))
        ]),
        child: GestureDetector(
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: SvgPicture.asset(
                    assetName,
                    height: SizeConfig.screenWidth / 4,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                    child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            width: SizeConfig.screenWidth / 4,
                            child: AutoSizeText(
                              name,
                              minFontSize: 14,
                              maxFontSize: 18,
                              maxLines: 2,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: ThemeApp.textColor, fontSize: 18),
                            )),
                        const SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: iconPressed,
                          child: Icon(Icons.play_circle_outline_outlined),
                        )
                      ],
                    ),
                  ),
                ))
              ],
            ),
          ),
          onTap: action,
        ));
  }
}
