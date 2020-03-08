import 'package:flutter/material.dart';

class SilverTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: Padding(
          padding: const EdgeInsets.only(left: 0, right: 0,top: 10.0),
        child: Card(

          child: TabBar(
            isScrollable: true,
            labelColor: Colors.black87,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(
              icon: Icon(Icons.category),
//                  text: "Category"
                  ),
              Tab(
              icon: Icon(Icons.branding_watermark),
//                  text: "Best Brands",

              ),
              Tab(
              icon: Icon(Icons.shopping_cart),
//                  text: "Online Shop"
              ),
            ],
          ),
        ),


      ),
    );
  }
}

//),
//pinned: true,
//);
