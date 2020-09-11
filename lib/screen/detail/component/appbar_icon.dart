import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constant/constant.dart';

class AppBarIcon extends StatelessWidget {
  final String iconUrl;

  const AppBarIcon({Key key, this.iconUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        margin: EdgeInsets.all(kDefaultPadding),
        width: size.width * 0.055,
        height: size.width * 0.055,
        child: SvgPicture.asset(
          iconUrl,
          color: Colors.white,
        ));
  }
}
