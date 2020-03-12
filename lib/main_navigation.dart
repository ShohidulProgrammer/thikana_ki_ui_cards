import 'package:flutter/material.dart';
import 'package:thikana_ki/utils/language/translate.dart';
import 'screens/chat/chat.dart';
import 'screens/message/message.dart';
import 'screens/notification/notification.dart';
import 'screens/wishlist/wishlist.dart';
import 'widgets/drawer/drawer_menu.dart';
import 'screens/bottom_navbar/bottom_menu_item.dart';
import 'screens/home/home_page.dart';

class MainNavigation extends StatefulWidget {
  @override
  _MainNavigationState createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _selectedIndex = 0;

  @override
  void initState() {
//    _fcmHandle();
    super.initState();
  }

  ///On change tab bottom menu
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

//  ///List bottom menu
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: DrawerMenu(),
        body: SafeArea(
          child: IndexedStack(
            index: _selectedIndex,
            children: <Widget>[
              HomePage(),
              WishList(),
              MessageList(),
              NotificationList(),
//            HomePage(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: allBottomMenuItems.map((BottomMenuItem navBarItem) {
            return BottomNavigationBarItem(
              icon: Icon(navBarItem.icon),
              backgroundColor: navBarItem.color,
              title: Text(Translate.of(context).translate(navBarItem.title)),
            );
//                Text(navBarItem.title));
          }).toList(),
          currentIndex: _selectedIndex,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Theme.of(context).unselectedWidgetColor,
          selectedItemColor: Theme.of(context).primaryColor,
          showUnselectedLabels: true,
          onTap: _onItemTapped,
        ));
  }
}
