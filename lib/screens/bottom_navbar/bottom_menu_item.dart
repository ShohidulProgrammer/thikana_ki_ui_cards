import 'package:flutter/material.dart';

class BottomMenuItem {
  const BottomMenuItem({@required this.icon, this.title, this.color});

  final String title;
  final IconData icon;
  final MaterialColor color;
}

const List<BottomMenuItem> allBottomMenuItems = <BottomMenuItem>[
  BottomMenuItem(title: 'Home', icon: Icons.home, color: Colors.teal),
  BottomMenuItem(title: 'Whish List', icon: Icons.favorite, color: Colors.cyan),
  BottomMenuItem(title: 'Chat', icon: Icons.chat, color: Colors.orange),
  BottomMenuItem(
      title: 'Notifications', icon: Icons.notifications, color: Colors.blue),
//  BottomMenuItem(title: 'Account', icon: Icons.account_circle, color: Colors.blue),
];
