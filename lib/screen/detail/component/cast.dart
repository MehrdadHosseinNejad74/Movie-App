import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constant/constant.dart';
import '../../../model/movie_model.dart';

class Cast extends StatelessWidget {
  final Movie movie;

  const Cast({Key key, this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(bottom: kDefaultPadding*2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'CAST',
            style: kDefaultTextStyle.copyWith(
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
                color: Colors.black.withOpacity(0.2),
                fontSize: size.width * 0.070),
          ),
          Column(
            children: _buildCastDetail(movie, size),
          )
        ],
      ),
    );
  }

  List<Container> _buildCastDetail(Movie movie, Size size) {
    List<Container> castItem = List();

    movie.casts.forEach((cast) {
      castItem.add(Container(
        margin: EdgeInsets.all(kDefaultPadding/2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: size.width*0.15,
              height: size.width*0.15,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(cast.imageUrl)
                  ),
                  borderRadius: BorderRadius.circular(kDefaultPadding / 4)),
            ),
            SizedBox(
              width: kDefaultPadding / 2,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cast.name + ' ' + cast.family,
                  style: kDefaultTextStyle.copyWith(
                      fontSize: size.width * 0.05, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(cast.role,
                    style: kDefaultTextStyle.copyWith(
                        fontSize: size.width * 0.035,
                        color: Colors.grey,
                        fontWeight: FontWeight.w600))
              ],
            )
          ],
        ),
      ));
    });

    return castItem;
  }
}
