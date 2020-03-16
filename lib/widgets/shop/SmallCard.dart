import 'package:flutter/material.dart';
import 'package:thikana_ki/models/screen_models/shop_model.dart';

class SmallCard extends StatelessWidget {
  const SmallCard({Key key, this.shopModel}) : super(key: key);
  final ShopModel shopModel;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.display1;

    return Card(
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
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
                      vertical: 10.0, horizontal: 20.0),
                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS9vAP24XvNRDnkwgwUmN72s4DnitZMjMHFh22U4bAf30PZu1p3',
                    // width: 300,
//                  height: 100,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    shopModel.title,
//                  style: textStyle
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
//        elevation: 5,
//        margin: EdgeInsets.all(5),
    );
  }
}
