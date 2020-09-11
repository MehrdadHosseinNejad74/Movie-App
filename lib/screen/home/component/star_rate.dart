import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Star extends StatelessWidget {
  final int like;
  final int dislike;

  const Star({Key key, this.like, this.dislike}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List<Container> stars = List();

    if(like >5 || dislike >5)
      throw new UnimplementedError();

    for (int i = 0; i < like; i++) {
      stars.add(Container(
          height: size.height * 0.045,
          width: size.width * 0.045,
          child: SvgPicture.asset("assets/images/icons/Star.svg")));
    }

    for (int i = 0; i < dislike; i++) {
      stars.add(Container(
        height: size.height * 0.045,
        width: size.width * 0.045,
        child: SvgPicture.asset(
          "assets/images/icons/Star.svg",
          color: Colors.grey,
        ),
      ));
    }

    return Row(
      children: stars,
    );
  }
}