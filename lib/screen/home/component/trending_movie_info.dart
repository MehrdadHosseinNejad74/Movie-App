import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movie_app/constant/constant.dart';
import 'package:movie_app/model/movie_model.dart';
import 'package:movie_app/screen/home/component/star_rate.dart';

class TrendingMovieInfo extends StatelessWidget {

  final Movie movie;

  const TrendingMovieInfo({Key key, this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          movie.name,
          style: kDefaultTextStyle.copyWith(fontSize: size.width * 0.04),
        ),
        Row(
          children: [
            Star(
              dislike: 5 - movie.rate,
              like: movie.rate,
            ),
            SizedBox(
              width: 5,
            ),
            RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: movie.rate.toString(),
                    style: kDefaultTextStyle.copyWith(
                        fontWeight: FontWeight.w700,
                        color: Colors.black.withOpacity(0.7),
                        fontSize: size.width * 0.035)),
                TextSpan(
                    text: ' / 5',
                    style: kDefaultTextStyle.copyWith(
                        color: Colors.black.withOpacity(0.5),
                        fontSize: size.width * 0.035)),
              ]),
            )
          ],
        ),
        Text(
          movie.genre,
          style: kDefaultTextStyle.copyWith(
              fontSize: size.width * 0.04, color: Colors.grey),
        )
      ],
    );
  }
}

