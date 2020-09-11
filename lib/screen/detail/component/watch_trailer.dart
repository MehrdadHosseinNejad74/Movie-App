import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movie_app/constant/constant.dart';

class WatchTrailer extends StatelessWidget {
  const WatchTrailer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset("assets/images/icons/Watch.svg"),
        SizedBox(
          height: 5,
        ),
        Text(
          'Watch trailer',
          style: kDefaultTextStyle.copyWith(
              fontWeight: FontWeight.w700, fontSize: size.width * 0.03),
        ),
      ],
    );
  }
}