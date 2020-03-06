import 'package:flutter/material.dart';
import '../splash/splash_screen.dart';


import 'constants.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => SplashScreen());
//      case signUpRoute:
//        return MaterialPageRoute(builder: (_) => SignUpPage());
//      case otpInputPageRoute:
//        User user = settings.arguments;
//        return MaterialPageRoute(builder: (_) => OTPInputPage(user: user));
//      case profilePageRoute:
//        return MaterialPageRoute(builder: (_) => ProfilePage());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
