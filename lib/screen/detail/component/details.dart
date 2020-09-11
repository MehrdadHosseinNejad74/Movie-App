import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constant/constant.dart';
import '../../../model/movie_model.dart';

class DetailItemHeaders extends StatefulWidget {
  @override
  _DetailItemHeadersState createState() => _DetailItemHeadersState();
}

class _DetailItemHeadersState extends State<DetailItemHeaders> {

  int enableItemIndex = 0;
  final List<String> details = ['INFO', 'REVIEWS', 'RECOMMENDATIONS'];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * 0.1,
      child: ListView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  enableItemIndex = index;
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: kDefaultPadding),
                    child: Text(
                      details[index],
                      style: TextStyle(
                          fontSize: size.width * 0.05,
                          letterSpacing: 1,
                          color: enableItemIndex == index
                              ? Colors.black
                              : Colors.grey),
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Container(
                    width: size.width * 0.10,
                    height: 3,
                    color: enableItemIndex == index
                        ? Colors.black
                        : Colors.transparent,
                  )
                ],
              ),
            );
          },
          itemCount: details.length),
    );
  }
}


