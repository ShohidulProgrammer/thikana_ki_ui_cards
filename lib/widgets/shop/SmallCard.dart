import 'package:flutter/material.dart';
import 'package:thikana_ki/models/screen_models/shop_model.dart';

class SmallCard extends StatelessWidget {
  const SmallCard({Key key, this.shopModel}) : super(key: key);
  final ShopModel shopModel;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.display1;
    return Container(
      height: 5000,
      child: Card(
//        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: InkWell(
          onTap: () {
            print("Card Item was clicked");
          },
          child: Center(
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 5.0, horizontal: 20.0),
                    child: Image.network(
                      'https://dlior9lx1k7r2.cloudfront.net/companylogo/9542879f-ca20-42e5-88b8-421faa7befb7.jpg',
                      // width: 300,
//                  height: 100,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    shopModel.title,
//                  style: textStyle
                  ),
                ),
              ],
            ),
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 5,
        margin: EdgeInsets.all(5),
      ),
    );
  }
}
