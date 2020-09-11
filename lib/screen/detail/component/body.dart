import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/screen/detail/component/cast.dart';
import 'package:movie_app/screen/detail/component/story_line.dart';

import '../../../constant/constant.dart';
import '../../../model/movie_model.dart';
import 'details.dart';
import 'movie_info.dart';

class Body extends StatelessWidget {
  final Movie movie;

  const Body({Key key, this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Expanded(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.all(kDefaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                movie.name.toUpperCase(),
                style: kDefaultTextStyle.copyWith(
                    fontSize: size.width * 0.05, fontWeight: FontWeight.bold),
              ),
              Text(
                movie.genre,
                style: kDefaultTextStyle.copyWith(
                    color: Colors.grey, fontSize: size.width * 0.04),
              ),
              SizedBox(
                height: kDefaultPadding,
              ),
              DetailItemHeaders(),
              MovieInfo(
                movie: movie,
              ),
              SizedBox(
                height: kDefaultPadding,
              ),
              StoryLine(
                movie: movie,
              ),
              SizedBox(
                height: kDefaultPadding,
              ),
              Cast(
                movie: movie,
              )
            ],
          ),
        ),
      ),
    );
  }
}
