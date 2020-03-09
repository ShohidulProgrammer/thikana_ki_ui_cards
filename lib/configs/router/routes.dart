import 'package:flutter/material.dart';
import '../../screens/bottom_navbar/main_navigation_bottom_navbar.dart';
import '../../screens/category/category.dart';
import '../../screens/list_product/list_product.dart';
import '../../screens/splash/splash_screen.dart';
import 'router_path_constants.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashRoute:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case homeRoute:
        return MaterialPageRoute(builder: (_) => MainNavigationBottomNavBar());
      case categoryPageRoute:
        return MaterialPageRoute(builder: (_) => Category());

      case listProductPageRoute:
        final category = settings.arguments;
        return MaterialPageRoute(
          builder: (context) => ListProduct(title: category),
        );
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

  ///Singleton factory
  static final Router _instance = Router._internal();

  factory Router() {
    return _instance;
  }

  Router._internal();
}
