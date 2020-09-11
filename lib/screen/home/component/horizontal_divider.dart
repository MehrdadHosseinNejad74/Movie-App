import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HorizontalDivider extends StatelessWidget {
  final double widthFactor;
  final double heightFactor;

  const HorizontalDivider(
      {Key key, @required this.widthFactor, @required this.heightFactor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.grey,
      width: size.width * widthFactor,
      height: size.height * heightFactor,
    );
  }
}
