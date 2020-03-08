import 'package:flutter/material.dart';
import 'my_silver_app_bar.dart';
import 'tab_bar_body.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverPersistentHeader(
              delegate: MySliverAppBar(
                  expandedHeight: MediaQuery.of(context).size.width),
            ),
          ];
        },
        body: TabBarView(
          children: <Widget>[
            TabBarBody(),
            TabBarBody(),
            TabBarBody(),
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
