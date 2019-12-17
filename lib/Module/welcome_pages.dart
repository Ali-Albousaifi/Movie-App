
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_view_indicator/page_view_indicator.dart';

class Pages
{
  String images;
  String title;
  
  Pages({this.title,this.images});
}

ValueNotifier<int> value=ValueNotifier(0);
Widget pageViewIndicator(int length)
{
  return PageViewIndicator(
  pageIndexNotifier: value,
  length: length,
  normalBuilder: (animationController, index) => Circle(
        size: 8.0,
        color: Colors.grey,
      ),
  highlightedBuilder: (animationController, index) => ScaleTransition(
        scale: CurvedAnimation(
          parent: animationController,
          curve: Curves.ease,
        ),
        child: Circle(
          size: 12.0,
          color: Colors.red,
        ),
      ),
);
}
