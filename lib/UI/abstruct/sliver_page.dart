import 'package:flutter/material.dart';
import 'my_sliver_header.dart';

class MyAbstractSliverPage extends StatelessWidget {
  final List<Widget> sliverHeaderItems;
  final List<Widget> sliverBodyItems;
  final SliverPersistentHeaderDelegate delegate;
  final int heightPart;

  const MyAbstractSliverPage(
      {Key key,
      this.heightPart,
      this.delegate,
      this.sliverHeaderItems,
      this.sliverBodyItems})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double expandedHeight = MediaQuery.of(context).size.width / heightPart;
    return DefaultTabController(
      length: sliverBodyItems.length ?? 0,
      child: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverPersistentHeader(
              delegate: MyAbstractSliverHeader(
                expandedHeight: expandedHeight,
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
