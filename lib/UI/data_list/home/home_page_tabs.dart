import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:thikana_ki/UI/screens/shop/grid_card_list.dart';
import 'package:thikana_ki/UI/widgets/home/tab_bar_body.dart';

List<Widget> homePageTabHeaderIcons = [
  Tab(icon: Icon(Icons.category), text: "Category"),
  Tab(
    icon: Icon(Icons.branding_watermark),
    text: "Best Brands",
  ),
  Tab(icon: Icon(Icons.shopping_cart), text: "Online Shop"),
];

List<Widget> homePageSliverTabBarBodies = [
  TabBarBody(),
  Shop(),
  Shop(),
];
