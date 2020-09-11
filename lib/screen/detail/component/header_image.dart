import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constant/constant.dart';
import '../../../model/movie_model.dart';

class HeaderImage extends StatelessWidget {
  const HeaderImage({
    Key key,
    @required this.movie,
  }) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: FractionallySizedBox(
        widthFactor: 1,
        heightFactor: 0.89,
        child: Container(
          child: Image(
            image: AssetImage(movie.detailImage),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}