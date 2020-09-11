import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/constant/constant.dart';

class MovieInfoDetail extends StatelessWidget {
  final String title;
  final String value;

  const MovieInfoDetail({Key key, this.title, this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Text(
          value,
          style: kDefaultTextStyle.copyWith(
              fontSize: size.width * 0.05, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 5,
        ),
        Text(title,
            style: kDefaultTextStyle.copyWith(
                fontSize: size.width * 0.035,
                color: Colors.grey,
                fontWeight: FontWeight.w400))
      ],
    );
  }
}