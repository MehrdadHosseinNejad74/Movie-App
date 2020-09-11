import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DarkGradient extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [Colors.black54, Colors.transparent],
      )),
    );
  }
}
