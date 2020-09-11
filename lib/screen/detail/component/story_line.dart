import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constant/constant.dart';
import '../../../model/movie_model.dart';

class StoryLine extends StatelessWidget {
  final Movie movie;

  const StoryLine({Key key, this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'STORYLINE',
          style: kDefaultTextStyle.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.black.withOpacity(0.2),
              letterSpacing: 1,
              fontSize: size.width * 0.070),
        ),
        SizedBox(
          height: kDefaultPadding / 2,
        ),
        Text(
          movie.content,
          style: kDefaultTextStyle.copyWith(fontSize: size.width * 0.04),
        )
      ],
    );
  }
}
