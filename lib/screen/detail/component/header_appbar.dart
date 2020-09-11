import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'appbar_icon.dart';

class HeaderAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Align(
            alignment: Alignment.topLeft,
            child: InkWell(
              onTap: (){
                Navigator.of(context).pop();
              },
              child: AppBarIcon(
                iconUrl: "assets/images/icons/Back.svg",
              ),
            ),
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: AppBarIcon(
                  iconUrl: "assets/images/icons/Fav_Outline.svg",
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: AppBarIcon(
                  iconUrl: "assets/images/icons/More.svg",
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
