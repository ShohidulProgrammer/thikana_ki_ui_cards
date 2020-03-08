import 'package:flutter/material.dart';

import 'my_silver_app_bar.dart';
import 'silver_tab_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverPersistentHeader(

              delegate: MySliverAppBar(
                  expandedHeight:  MediaQuery.of(context).size.width),
            ),
          ];
        },
        body: TabBarView(
          children: <Widget>[
            Center(
              child: Text("Sample text 1"),
            ),
            Center(
              child: Text("Sample text 2"),
            ),
            Center(
              child: Text("Sample text 3"),
            ),
          ],
        ),
      ),
    );
  }
}

//class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
//  _SliverAppBarDelegate(this._tabBar);
//
//  final TabBar _tabBar;
//
//  @override
//  double get minExtent => _tabBar.preferredSize.height;
//
//  @override
//  double get maxExtent => _tabBar.preferredSize.height;
//
//  @override
//  Widget build(
//      BuildContext context, double shrinkOffset, bool overlapsContent) {
//    return Stack(
//      alignment: Alignment.bottomCenter,
//      children: <Widget>[
//        GoogleMap(),
//        SearchBar(),
//        Container(
//          child: _tabBar,
//        ),
//      ],
//    );
//  }
//
//
//
//
//  @override
//  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
//    return false;
//  }
//}

//
//_SliverAppBarDelegate(
//TabBar(
//labelColor: Colors.black87,
//unselectedLabelColor: Colors.grey,
//tabs: [
//Tab(icon: Icon(Icons.category), text: "Category"),
//Tab(
//icon: Icon(Icons.branding_watermark),
//text: "Best Brands"),
//Tab(icon: Icon(Icons.shopping_cart), text: "Online Shop"),
//],
//),
//),
//pinned: true,
//),
