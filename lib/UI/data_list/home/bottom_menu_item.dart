import 'package:flutter/material.dart';

class BottomMenuItem {
  const BottomMenuItem({@required this.icon, this.title, this.color});

  final String title;
  final IconData icon;
  final MaterialColor color;
}

const List<BottomMenuItem> allBottomMenuItems = <BottomMenuItem>[
  BottomMenuItem(title: 'home', icon: Icons.home, color: Colors.teal),
  BottomMenuItem(title: 'wish_list', icon: Icons.favorite, color: Colors.cyan),
  BottomMenuItem(title: 'chat', icon: Icons.chat, color: Colors.orange),
  BottomMenuItem(
      title: 'notification', icon: Icons.notifications, color: Colors.blue),
//  BottomMenuItem(title: 'Account', icon: Icons.account_circle, color: Colors.blue),
];
