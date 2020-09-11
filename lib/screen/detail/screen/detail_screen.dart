import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/screen/detail/component/body.dart';
import 'package:movie_app/screen/detail/component/purchase_bottomsheet.dart';

import '../../../model/movie_model.dart';
import '../component/header.dart';

class DetailScreen extends StatelessWidget {

  final Movie movie;
  const DetailScreen({Key key, this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomSheet: PurchaseBottomSheet(
          movie: movie,
        ),
        body: Column(
          children: [
            Header(
              movie: movie,
            ),
            Body(
              movie: movie,
            )
          ],
        ),
      ),
    );
  }
}


