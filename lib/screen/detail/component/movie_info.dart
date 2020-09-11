import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/screen/home/component/horizontal_divider.dart';
import 'package:movie_app/screen/home/component/movie_info_detail.dart';

import '../../../model/movie_model.dart';

class MovieInfo extends StatelessWidget {
  final Movie movie;

  const MovieInfo({Key key, this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        MovieInfoDetail(
          title: 'Year',
          value: movie.year,
        ),
        HorizontalDivider(widthFactor: 0.004, heightFactor: 0.04,),
        MovieInfoDetail(
          title: 'Language',
          value: movie.language,
        ),
        HorizontalDivider(widthFactor: 0.004, heightFactor: 0.04,),
        MovieInfoDetail(
          title: 'Duration',
          value: movie.hourDuration.toString() +
              'h ' +
              movie.minuteDuration.toString() +
              'm',
        ),
      ],
    );
  }
}
