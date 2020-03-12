import 'package:flutter/material.dart';
import 'package:thikana_ki/screens/about_us/about_us.dart';
import 'package:thikana_ki/screens/chat/chat.dart';
import 'package:thikana_ki/screens/edit_profile/edit_profile.dart';
import 'package:thikana_ki/screens/popular/popular_categroy_iem_list_factory.dart';
import 'package:thikana_ki/screens/product_detail/product_detail.dart';
import '../../main_navigation.dart';
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
      case mainNavigationBottomPageRoute:
        return MaterialPageRoute(builder: (_) => MainNavigationBottomNavBar());
      case mainNavigationRoute:
      case '/Home':
        return MaterialPageRoute(builder: (_) => MainNavigation());
      case categoryPageRoute:
        return MaterialPageRoute(builder: (_) => Category());
      case productDetailPageRoute:
        return MaterialPageRoute(builder: (_) => ProductDetail());
      case AboutUsPageRoute:
      case '/About Us':
        return MaterialPageRoute(builder: (_) => AboutUs());
      case EditProfilePageRoute:
      case '/Edit Profile':
        return MaterialPageRoute(builder: (_) => EditProfile());
      case ChatPageRoute:
        final user = settings.arguments;
        return MaterialPageRoute(
          builder: (context) => Chat(
            user: user,
          ),
        );

      case listProductPageRoute:
        final category = settings.arguments;
        return MaterialPageRoute(
          builder: (context) => ListProduct(title: category),
        );

      case PopularCategoryListFactoryPageRoute:
        final popularTitle = settings.arguments;
        return MaterialPageRoute(
          builder: (context) =>
              PopularCategoryListFactory(popularTitle: popularTitle),
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
