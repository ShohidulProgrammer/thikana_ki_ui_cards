import 'package:flutter/material.dart';
import 'package:thikana_ki/api/api.dart';
import 'package:thikana_ki/models/model_category.dart';
import 'package:thikana_ki/models/model_result_api.dart';
import 'package:thikana_ki/models/screen_models/screen_models.dart';
import 'package:thikana_ki/utils/navigation/tap_service.dart';

import 'home_category_item.dart';

class CategoryIcons extends StatelessWidget {
  final HomePageModel homePageModel;

  const CategoryIcons({this.homePageModel});

  @override
  Widget build(BuildContext context) {
    if (homePageModel?.category == null) {
      return Wrap(
        runSpacing: 10,
        alignment: WrapAlignment.center,
        children: List.generate(8, (index) => index).map(
          (item) {
            return HomeCategoryItem();
          },
        ).toList(),
      );
    }

    return Wrap(
      runSpacing: 10,
      alignment: WrapAlignment.center,
      children: homePageModel.category.map(
        (item) {
          print(
              'My Item: Icon: ${item.icon} \nColor: ${item.color} \nTitle: ${item.title}');
          return HomeCategoryItem(
            item: item,
            onPressed: (item) {
              onTapService(item, context);
            },
          );
        },
      ).toList(),
    );
  }
}
