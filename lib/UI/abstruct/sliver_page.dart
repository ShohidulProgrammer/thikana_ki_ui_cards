import 'package:flutter/material.dart';
import 'my_silver_app_bar.dart';

class MyAbstractSliverPage extends StatelessWidget {
  final List<Widget> sliverHeaderItems;
  final List<Widget> sliverBodyItems;

  const MyAbstractSliverPage(
      {Key key, this.sliverHeaderItems, this.sliverBodyItems})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: sliverBodyItems.length ?? 0,
      child: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverPersistentHeader(
              delegate: MyAbstractSliverAppBar(
                expandedHeight: MediaQuery.of(context).size.width,
                children: sliverHeaderItems,
                alignment: Alignment.bottomCenter,
              ),
            ),
          ];
        },
        body: TabBarView(
            children: sliverBodyItems.map<Widget>((tabs) => tabs).toList()),
      ),
    );
  }
}
