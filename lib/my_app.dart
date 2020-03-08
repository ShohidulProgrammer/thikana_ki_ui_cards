import 'package:flutter/material.dart';
import './router/router_path_constants.dart';

import 'configs/theme/theme.dart';
import 'router/router.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      title: 'Thikana Ki',
//      theme: ThemeData(
//        scaffoldBackgroundColor: Colors.white,
//        buttonColor: Colors.lightGreen,
//        primaryColor: Colors.green,
//      ),
      onGenerateRoute: Router.generateRoute,
      initialRoute: splashRoute,
    );
  }
}

//Color(0xff069be5),
//Color(0xffe6e7e8),