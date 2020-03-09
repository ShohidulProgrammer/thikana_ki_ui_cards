
import 'package:flutter/material.dart';
import 'package:thikana_ki/configs/router/router_path_constants.dart';
import 'package:thikana_ki/configs/router/routes.dart';
import 'package:thikana_ki/configs/routes.dart';

///On select category
void onTapService(item, BuildContext context) {
  switch (item.route) {
    case 'category':
      Navigator.pushNamed(context, categoryPageRoute);
      break;
    case 'list':
      Navigator.pushNamed(context, listProductPageRoute, arguments: item.title);
      break;
    default:
      break;
  }
}

