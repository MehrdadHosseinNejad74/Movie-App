import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/constant/constant.dart';

class HeaderDetail extends StatelessWidget {
  const HeaderDetail({
    Key key,
    @required this.value,
    @required this.label,
  }) : super(key: key);

  final String value;
  final String label;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          value,
          style: kDefaultTextStyle.copyWith(
              fontWeight: FontWeight.bold, fontSize: size.width * 0.07),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          label,
          style: kDefaultTextStyle.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.grey,
              fontSize: size.width * 0.03),
        ),
      ],
    );
  }
}