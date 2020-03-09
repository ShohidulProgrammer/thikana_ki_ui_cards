import 'package:flutter/material.dart';
import '../screens/bottom_navbar/main_navigation_bottom_navbar.dart';
import '../screens/splash/splash_screen.dart';


import 'router_path_constants.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashRoute:
        return MaterialPageRoute(builder: (_) => SplashScreen());
        case homeRoute:
        return MaterialPageRoute(builder: (_) => MainNavigationBottomNavBar());
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
