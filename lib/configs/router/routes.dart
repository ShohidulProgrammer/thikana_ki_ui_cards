import 'package:flutter/material.dart';
import 'package:thikana_ki/screens/about_us/about_us.dart';
import 'package:thikana_ki/screens/change_password/change_password.dart';
import 'package:thikana_ki/screens/chat/chat.dart';
import 'package:thikana_ki/screens/contact_us/contact_us.dart';
import 'package:thikana_ki/screens/edit_profile/edit_profile.dart';
import 'package:thikana_ki/screens/gallery/gallery.dart';
import 'package:thikana_ki/screens/location/location.dart';
import 'package:thikana_ki/screens/photo_preview/photo_preview.dart';
import 'package:thikana_ki/screens/popular/popular_categroy_iem_list_factory.dart';
import 'package:thikana_ki/screens/settings/font_setting/font_setting.dart';
import 'package:thikana_ki/screens/settings/language_setting/language_setting.dart';
import 'package:thikana_ki/screens/settings/setting/setting.dart';
import 'package:thikana_ki/screens/settings/theme_setting/theme_setting.dart';
import 'package:thikana_ki/screens/shop_detail/product_detail.dart';
import '../../main_navigation.dart';
import '../../screens/category/category.dart';
import '../../screens/list_product/list_product.dart';
import '../../screens/splash/splash_screen.dart';
import 'router_path_constants.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashRoute:
        return MaterialPageRoute(builder: (_) => SplashScreen());
//      case mainNavigationBottomPageRoute:
//        return MaterialPageRoute(builder: (_) => MainNavigationBottomNavBar());
      case mainNavigationRoute:
      case '/Home':
        return MaterialPageRoute(builder: (_) => MainNavigation());
      case categoryPageRoute:
        return MaterialPageRoute(builder: (_) => Category());
      case shopDetailPageRoute:
        return MaterialPageRoute(builder: (_) => ProductDetail());
      case aboutUsPageRoute:
      case '/About Us':
        return MaterialPageRoute(builder: (_) => AboutUs());
      case editProfilePageRoute:
      case '/Edit Profile':
        return MaterialPageRoute(builder: (_) => EditProfile());
      case contactUsPageRoute:
        return MaterialPageRoute(builder: (_) => ContactUs());
      case chatPageRoute:
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
      case changePasswordPageRoute:
      case '/Change Password':
        return MaterialPageRoute(builder: (_) => ChangePassword());
      case settingPageRoute:
        return MaterialPageRoute(builder: (context) => Setting());
      case changeLanguagePageRoute:
        return MaterialPageRoute(builder: (context) => LanguageSetting());
      case themeSettingPageRoute:
        return MaterialPageRoute(builder: (context) => ThemeSetting());
      case fontSettingPageRoute:
        return MaterialPageRoute(builder: (context) => FontSetting());
      case photoPreviewPageRoute:
        final Map<String, dynamic> params = settings.arguments;
        return MaterialPageRoute(
          builder: (context) => PhotoPreview(
            galleryList: params['photo'],
            initialIndex: params['index'],
          ),
          fullscreenDialog: true,
        );

      case galleryPageRoute:
        final photo = settings.arguments;
        return MaterialPageRoute(
          builder: (context) => Gallery(photo: photo),
          fullscreenDialog: true,
        );

      case locationPageRoute:
        final location = settings.arguments;
        return MaterialPageRoute(
          builder: (context) => Location(
            location: location,
          ),
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
