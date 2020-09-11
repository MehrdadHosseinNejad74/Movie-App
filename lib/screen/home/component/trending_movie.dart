import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/constant/constant.dart';
import 'package:movie_app/model/movie_model.dart';
import 'package:movie_app/screen/home/component/trending_movie_cover.dart';
import 'package:movie_app/screen/home/component/trending_movie_info.dart';

class Trending extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: kDefaultPadding / 2),
          child: Text('TRENDING',
              style: kDefaultTextStyle.copyWith(
                  fontSize: size.width * 0.06,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                  color: Colors.black.withOpacity(0.2))),
        ),
        Column(
          children: _buildTrendingList(size),
        ),
        Container(
          margin: EdgeInsets.only(bottom: kDefaultPadding * 3),
        )
      ],
    );
  }

  List<Container> _buildTrendingList(Size size) {
    List<Container> trendingMovies = List();
    movies.forEach((movie) {
      trendingMovies.add(Container(
        height: size.height * 0.2,
        margin: EdgeInsets.all(kDefaultPadding / 2),
        child: Row(
          children: [
            TrendingMovieCover(
              movie: movie,
            ),
            SizedBox(
              width: kDefaultPadding / 2,
            ),
            TrendingMovieInfo(
              movie: movie,
            )
          ],
        ),
      ));
    });
    return trendingMovies;
  }
}
