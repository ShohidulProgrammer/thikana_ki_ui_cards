import 'package:flutter/material.dart';

import 'search_bar.dart';
import 'GoogleMap.dart';
import 'silver_tab_bar.dart';

class MySliverAppBar extends SliverPersistentHeaderDelegate {
  final double expandedHeight;

//  final List<ImageModel> banners;

  MySliverAppBar({this.expandedHeight});

  @override
  Widget build(context, shrinkOffset, overlapsContent) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        MyGoogleMap(),
        SearchBar(),
        SilverTabBar(),
      ],
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => 145;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
