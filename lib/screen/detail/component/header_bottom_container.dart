import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/constant/constant.dart';
import 'package:movie_app/screen/detail/component/watch_trailer.dart';
import 'package:movie_app/screen/home/component/horizontal_divider.dart';

import '../../../model/movie_model.dart';
import 'header_detail.dart';

class BottomContainer extends StatelessWidget {
  const BottomContainer({
    Key key,
    @required this.movie,
  }) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Align(
      alignment: Alignment.bottomRight,
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaY: 5, sigmaX: 5),
          child: Container(
            margin: EdgeInsets.only(bottom: kDefaultPadding / 10),
            width: size.width * 0.8,
            height: size.height * 0.098,
            decoration: BoxDecoration(
                color: Color(0xffFFFFFF).withOpacity(0.7),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      offset: Offset(2, 2),
                      blurRadius: 1)
                ],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                WatchTrailer(),
                HorizontalDivider(
                  widthFactor: 0.004,
                  heightFactor: 0.06,
                ),
                HeaderDetail(
                  label: 'Age',
                  value: movie.age.toString() + '+',
                ),
                HeaderDetail(label: 'IMDB', value: movie.rate.toString())
              ],
            ),
          ),
        ),
      ),
    );
  }
}
