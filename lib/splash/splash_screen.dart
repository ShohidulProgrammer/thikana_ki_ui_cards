import 'package:flutter/material.dart';
import 'animated_logo.dart';
import 'app_bangla_logo.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
//        color: Colors.white,
        height: double.maxFinite,
        child: new Stack(
          //alignment:new Alignment(x, y)
          children: <Widget>[
            AnimatedLogo(),
            AppBanglaLogo(),

          ],
        ),
      ),
    );
  }
}
