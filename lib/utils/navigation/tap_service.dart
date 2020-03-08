
import 'package:flutter/material.dart';
import 'package:thikana_ki/configs/routes.dart';

///On select category
void onTapService(item, BuildContext context) {
  switch (item.route) {
    case 'category':
      Navigator.pushNamed(context, Routes.category);
      break;
    case 'list':
      Navigator.pushNamed(context, Routes.listProduct, arguments: item.title);
      break;
    default:
      break;
  }
}

