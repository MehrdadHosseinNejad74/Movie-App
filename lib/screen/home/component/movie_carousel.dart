import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/constant/constant.dart';
import 'package:movie_app/model/movie_model.dart';

import 'movie_cover.dart';

class MoviesCarousel extends StatefulWidget {
  @override
  _MoviesCarouselState createState() => _MoviesCarouselState();
}

class _MoviesCarouselState extends State<MoviesCarousel>
    with SingleTickerProviderStateMixin {
  PageController _pageController;
  AnimationController _textAnimationController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0, viewportFraction: 0.8);
    _textAnimationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 800));
  }

  @override
  void dispose() {
    _pageController.dispose();
    _textAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.64,
      child: PageView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: movies.length,
        physics: BouncingScrollPhysics(),
        onPageChanged: (pageIndex) {
          _textAnimationController.reset();
          _textAnimationController.forward();
        },
        controller: _pageController,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AnimatedBuilder(
                animation: _pageController,
                builder: (context, child) {
                  double value = 1;
                  if (_pageController.position.haveDimensions) {
                    value = _pageController.page - index;
                    value = (1 - value.abs() * 0.090).clamp(0, 1);
                  }
                  return Transform.scale(
                    scale: value,
                    child: child,
                  );
                },
                child: MovieCover(movieIndex: index),
              ),
              SizedBox(
                height: kDefaultPadding / 2,
              ),
              Expanded(
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: movies[index].name.toUpperCase() + '\n',
                        style: kDefaultTextStyle.copyWith(
                            fontWeight: FontWeight.w600,
                            fontSize: size.width * 0.04)),
                    TextSpan(
                        text: movies[index].genre,
                        style: kDefaultTextStyle.copyWith(
                            color: Colors.black.withOpacity(0.7),
                            fontWeight: FontWeight.w100,
                            fontSize: size.width * 0.035)),
                  ]),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
