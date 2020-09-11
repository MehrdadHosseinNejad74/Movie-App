import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/constant/cache.dart';
import 'package:movie_app/constant/constant.dart';
import 'package:movie_app/screen/home/component/trending_movie.dart';

import '../component/home_bottomsheet.dart';
import '../component/new_movie.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void didChangeDependencies() {
    cacheImages();
    super.didChangeDependencies();
  }

  cacheImages() {
    DetailCoverImages.imageAssets.forEach((asset) {
      precacheImage(asset, context);
    });
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomSheet: HomeBottomSheet(),
        body: Padding(
          padding: EdgeInsets.all(kDefaultPadding),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [NewMovies(), Trending()],
            ),
          ),
        ),
      ),
    );
  }
}
