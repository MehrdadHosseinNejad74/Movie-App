import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/model/home_bottomsheet_model.dart';

import 'home_bottomsheet_item.dart';

class HomeBottomSheet extends StatefulWidget {
  @override
  _HomeBottomSheetState createState() => _HomeBottomSheetState();
}

class _HomeBottomSheetState extends State<HomeBottomSheet> {

  int defaultItemIndex = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
        child: Container(
          width: size.width,
          height: size.height * 0.095,
          decoration: BoxDecoration(
            color: Color(0xffE0E0E0).withOpacity(0.35),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: _buildBottomSheetItems(),
          ),
        ),
      ),
    );
  }

  List<Widget> _buildBottomSheetItems() {
    List<Widget> items = List();
    bottomSheetModels.forEach((bottomSheetItem) {
      items.add(InkWell(
        onTap: () {
          setState(() {
            defaultItemIndex = bottomSheetItem.id;
          });
        },
        child: BottomSheetItem(
            itemColor: bottomSheetItem.id == defaultItemIndex
                ? Colors.black
                : Colors.grey,
            iconUrl: bottomSheetItem.iconUrl,
            iconLabel: bottomSheetItem.iconLabel,
        sizeFactor: bottomSheetItem.id == defaultItemIndex
            ? 0.070
            : 0.065),
      ));
    });
    return items;
  }
}
