import 'package:flutter/widgets.dart';
import 'package:thikana_ki/UI/data_list/home/home_page_tabs.dart';
import 'package:thikana_ki/UI/abstruct/sliver_page.dart';
import 'package:thikana_ki/UI/screens/message/message.dart';
import 'package:thikana_ki/UI/screens/notification/notification.dart';
import 'package:thikana_ki/UI/screens/wishlist/wishlist.dart';
import 'home_page_sliver_app_bar_item.dart';

List<Widget> bottomNavigationBodyItems = [
  MyAbstractSliverPage(
    sliverHeaderItems: homePageSliverBannerItems,
    sliverBodyItems: homePageSliverTabBarBodies,
  ),
  WishList(),
  MessageList(),
  NotificationList(),
];
