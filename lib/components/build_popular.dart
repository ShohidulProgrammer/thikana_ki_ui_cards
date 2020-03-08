import 'package:flutter/cupertino.dart';
import 'package:thikana_ki/models/screen_models/screen_models.dart';
import 'package:thikana_ki/widgets/app_card.dart';

///Build category UI
class CategoryImageCards extends StatelessWidget {
  final HomePageModel homePageModel;

  const CategoryImageCards({this.homePageModel});

  @override
  Widget build(BuildContext context) {
    if (homePageModel?.popular == null) {
      return ListView(
        padding: EdgeInsets.only(left: 5, right: 20, top: 10, bottom: 15),
        scrollDirection: Axis.horizontal,
        children: List.generate(8, (index) => index).map(
          (item) {
            return Padding(
              padding: EdgeInsets.only(left: 15),
              child: SizedBox(
                width: 135,
                height: 160,
                child: AppCard(type: CardType.basic),
              ),
            );
          },
        ).toList(),
      );
    }

    return ListView(
      padding: EdgeInsets.only(left: 5, right: 20, top: 10, bottom: 15),
      scrollDirection: Axis.horizontal,
      children: homePageModel.popular.map(
        (item) {
          return Padding(
            padding: EdgeInsets.only(left: 15),
            child: SizedBox(
              width: 135,
              height: 160,
              child: AppCard(
                onPressed: _onProductDetail,
                text: item.title,
                type: CardType.basic,
                image: item.image,
              ),
            ),
          );
        },
      ).toList(),
    );
  }

  ///On navigate product detail
  void _onProductDetail() {
//    Navigator.pushNamed(context, Routes.productDetail);
  }
}
