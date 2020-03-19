import 'package:flutter/material.dart';
import 'package:thikana_ki/UI/screens/shop/grid_card_list.dart';
import 'package:thikana_ki/UI/widgets/home/tab_bar_body.dart';

List<Widget> shopDetailPageTabHeaderIcons = [
  Tab(icon: Icon(Icons.shopping_cart, color: Colors.red), text: "Product"),
  Tab(
    icon: Icon(Icons.video_library, color: Colors.red),
    text: "Video",
  ),
  Tab(
      icon: Icon(
        Icons.contacts,
        color: Colors.red,
      ),
      text: "Contact"),
];

List<Widget> shopDetailPageSliverTabBarBodies = [
  TabBarBody(),
  Shop(),
  Shop(),
];
