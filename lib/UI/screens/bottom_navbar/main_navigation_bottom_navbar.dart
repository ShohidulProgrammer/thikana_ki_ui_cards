//import 'package:flutter/material.dart';
//import 'package:flutter_bloc/flutter_bloc.dart';
//import 'package:thikana_ki/blocs/authentication/bloc.dart';
//import 'package:thikana_ki/widgets/drawer/drawer_menu.dart';
//import '../bottom_navbar/bottom_menu_item.dart';
//import '../home/sliver_page.dart';
//
//class MainNavigationBottomNavBar extends StatefulWidget {
//  @override
//  _MainNavigationBottomNavBarState createState() =>
//      _MainNavigationBottomNavBarState();
//}
//
//class _MainNavigationBottomNavBarState
//    extends State<MainNavigationBottomNavBar> {
//  int _selectedIndex = 0;
//
//  @override
//  void initState() {
////    _fcmHandle();
//    super.initState();
//  }
//
//  ///On change tab bottom menu
//  void _onItemTapped(int index) {
//    setState(() {
//      _selectedIndex = index;
//    });
//  }
//
////  ///List bottom menu
//  @override
//  Widget build(BuildContext context) {
//    return Theme(
////      data: ThemeData(primaryIconTheme: IconThemeData(color: Colors.red)),
//      child: Scaffold(
//          drawer: DrawerMenu(),
//          body: BlocBuilder<AuthBloc, AuthenticationState>(
//              builder: (context, auth) {
//            return SafeArea(
//              child: IndexedStack(
//                index: _selectedIndex,
//                children: <Widget>[
//                  HomePage(),
//                  HomePage(),
//                  HomePage(),
//                  HomePage(),
////            HomePage(),
//                ],
//              ),
//            );
//          }),
//          bottomNavigationBar: BottomNavigationBar(
//            items: allBottomMenuItems.map((BottomMenuItem navBarItem) {
//              return BottomNavigationBarItem(
//                  icon: Icon(navBarItem.icon),
//                  backgroundColor: navBarItem.color,
//                  title: Text(navBarItem.title));
//            }).toList(),
//            currentIndex: _selectedIndex,
//            type: BottomNavigationBarType.fixed,
//            unselectedItemColor: Theme.of(context).unselectedWidgetColor,
//            selectedItemColor: Theme.of(context).primaryColor,
//            showUnselectedLabels: true,
//            onTap: _onItemTapped,
//          )),
//    );
//  }
//}
//
////  ///List bottom menu
////  List<BottomNavigationBarItem> _bottomBarItem(BuildContext context) {
////    return [
////      BottomNavigationBarItem(
////        icon: Icon(Icons.home),
////        title: Padding(
////          padding: EdgeInsets.only(top: 3),
////          child: Text('home'),
//////          child: Text(Translate.of(context).translate('home')),
////        ),
////      ),
////      BottomNavigationBarItem(
////        icon: Icon(Icons.favorite),
////        title: Padding(
////          padding: EdgeInsets.only(top: 3),
////          child: Text('Wish List'),
//////          child: Text(Translate.of(context).translate('wish_list')),
////        ),
////      ),
////      BottomNavigationBarItem(
////        icon: Icon(Icons.message),
////        title: Padding(
////          padding: EdgeInsets.only(top: 3),
////          child: Text('Chat'),
//////          child: Text(Translate.of(context).translate('chat')),
////        ),
////      ),
////      BottomNavigationBarItem(
////        icon: Icon(Icons.notifications),
////        title: Padding(
////          padding: EdgeInsets.only(top: 3),
////          child: Text('Notification'),
//////          child: Text(Translate.of(context).translate('notification')),
////        ),
////      ),
////      BottomNavigationBarItem(
////        icon: Icon(Icons.account_circle),
////        title: Padding(
////          padding: EdgeInsets.only(top: 3),
////          child: Text('Account'),
//////          child: Text(Translate.of(context).translate('account')),
////        ),
////      ),
////
////    ];
////  }
////
