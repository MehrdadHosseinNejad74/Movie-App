import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/model/movie_model.dart';
import 'package:movie_app/screen/detail/screen/detail_screen.dart';

class MovieCover extends StatelessWidget {
  const MovieCover({@required this.movieIndex});

  final int movieIndex;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailScreen(
                      movie: movies[movieIndex],
                    )));
      },
      child: Container(
        width: size.width * 0.64,
        height: size.height * 0.55,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(movies[movieIndex].coverImage)),
            boxShadow: [
              BoxShadow(
                  color: Colors.black26, blurRadius: 8, offset: Offset(0, 10))
            ]),
      ),
    );
  }
}
