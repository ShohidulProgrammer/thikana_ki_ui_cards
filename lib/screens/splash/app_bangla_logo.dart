import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBanglaLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double screen_height = MediaQuery.of(context).size.height;
    final double screen_width = MediaQuery.of(context).size.width;
    return Positioned(
      child: new Align(
        alignment: FractionalOffset.bottomCenter,
        child: Padding(
          padding: EdgeInsets.only(bottom: 12.0),
          child: Image(
            width: screen_width * 0.8,
            image: AssetImage(
              'assets/images/thikana_ki_bangla_logo.png',
            ),
          ),
        ),
      ),
    );

//    return Expanded(
//      child: Align(
//          alignment: FractionalOffset.bottomCenter,
//          child: Padding(
//            padding: EdgeInsets.only(bottom: 12.0),
//            child: Image(
//              width: screen_width * 0.8,
//              image: AssetImage(
//                'assets/images/thikana_ki_bangla_logo.png',
//              ),
//            ),
//          )),
//    );
//    return Stack(
//      children: <Widget>[
//        Positioned(
//          top: 20.0,
//          bottom: 50.0,
//          child: FlutterLogo(),
//        )
//      ],
//    );
  }
}
