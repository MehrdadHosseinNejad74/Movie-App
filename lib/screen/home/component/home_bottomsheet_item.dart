import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movie_app/constant/constant.dart';

class BottomSheetItem extends StatelessWidget {
  final String iconUrl;
  final String iconLabel;
  final Color itemColor;
  final double sizeFactor;

  const BottomSheetItem({Key key, this.iconUrl, this.iconLabel, this.itemColor, this.sizeFactor: 0.065})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: size.width * sizeFactor,
          child: AspectRatio(
            aspectRatio: 1,
            child: SvgPicture.asset(iconUrl , color: itemColor,),
          ),
        ),
        Text(
          iconLabel,
          style: kDefaultTextStyle.copyWith(fontSize: size.width * 0.035 , color: itemColor),
        )
      ],
    );
  }
}
