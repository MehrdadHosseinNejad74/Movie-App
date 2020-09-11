import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movie_app/model/movie_model.dart';

import '../../../constant/constant.dart';

class PurchaseBottomSheet extends StatelessWidget {
  const PurchaseBottomSheet({
    Key key,
    this.movie,
  }) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Color(0xfff2f2f2),
      width: size.width,
      height: size.height * 0.090,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: FractionallySizedBox(
              widthFactor: 1,
              heightFactor: 1,
              child: Container(
                color: Color(0xfff2f2f2),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "\$" + movie.price.toString(),
                    style: kDefaultTextStyle.copyWith(
                        letterSpacing: 1,
                        fontSize: size.width * 0.046,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20)),
                  color: Color(0xff9A9A9A).withOpacity(0.3),),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: size.width * 0.070,
                      child: AspectRatio(
                          aspectRatio: 1,
                          child: SvgPicture.asset("assets/images/icons/Purchase.svg")),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text('Purchase Now',
                        style: kDefaultTextStyle.copyWith(
                            letterSpacing: 1,
                            fontWeight: FontWeight.bold,
                            fontSize: size.width * 0.045))
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
