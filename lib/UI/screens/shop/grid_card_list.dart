import 'package:flutter/material.dart';
import 'package:thikana_ki/models/screen_models/shop_model.dart';
import 'package:thikana_ki/UI/widgets/shop/SmallCard.dart';

class Shop extends StatelessWidget {
  final double itemHeight = 200;
  final double itemWidth = 150;

  @override
  Widget build(BuildContext context) {
    final title = "Discount Shop";

    return GridView.count(
        crossAxisCount: 3,
        childAspectRatio: (itemWidth / itemHeight),
        children: List.generate(choices.length, (index) {
          return Container(

              color: Colors.grey[100],
              child: SmallCard(shopModel: choices[index]));
        }));
  }
}
