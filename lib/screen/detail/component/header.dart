import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../model/movie_model.dart';
import 'header_bottom_container.dart';
import 'header_image.dart';
import 'header_appbar.dart';
import 'dark_gradient.dart';

class Header extends StatelessWidget {
  final Movie movie;

  const Header({Key key, this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * 0.38,
      child: Stack(
        children: [

          //BackGround Image
          HeaderImage(movie: movie),

          //Dark Gradient on Image
          DarkGradient(),

          //Custom appbar including more, fav, back icons
          HeaderAppBar(),

          //White Bottom Container
          BottomContainer(movie: movie)
        ],
      ),
    );
  }
}



