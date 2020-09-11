import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/constant/constant.dart';

import 'movie_carousel.dart';

class NewMovies extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: kDefaultPadding / 2),
          child: Text(
            'NEW MOVIES',
            style: kDefaultTextStyle.copyWith(
                fontSize: size.width * 0.06,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
                color: Colors.black.withOpacity(0.2)),
          ),
        ),
        SizedBox(
          height: kDefaultPadding/2,
        ),
        MoviesCarousel(),
      ],
    );
  }
}
