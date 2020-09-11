import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movie_app/constant/constant.dart';
import 'package:movie_app/model/movie_model.dart';
import 'package:movie_app/screen/home/component/star_rate.dart';

class TrendingMovieCover extends StatelessWidget {
  final Movie movie;

  const TrendingMovieCover({
    Key key, this.movie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AspectRatio(
      aspectRatio: 0.85,
      child: Container(
        height: size.height * 0.2,
        width: size.width * 0.2,
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              alignment: Alignment.topCenter,
              image: AssetImage(
                movie.coverImage,
              )),
          borderRadius: BorderRadius.circular(10),
          color: Colors.black26,
        ),
      ),
    );
  }
}

