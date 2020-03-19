import 'package:flutter/widgets.dart';
import 'package:thikana_ki/UI/abstruct/carousel_banner_image.dart';
import 'package:thikana_ki/UI/widgets/home/silver_tab_bar.dart';

import 'shop_detail_tabs.dart';

List<Widget> shopDetailPageSliverBannerItems = [
  CarouselBanner(),
  MyAbstractSilverTabBarHeader(tabHeaders: shopDetailPageTabHeaderIcons),
];
