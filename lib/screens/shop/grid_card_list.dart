import 'package:flutter/material.dart';
import 'package:thikana_ki/models/screen_models/shop_model.dart';
import 'package:thikana_ki/widgets/shop/SmallCard.dart';

class Shop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = "Discount Shop";

    return GridView.count(
        crossAxisCount: 3,
        children: List.generate(choices.length, (index) {
          return Center(
            child: SmallCard(shopModel: choices[index]),
          );
        }));
  }
}
