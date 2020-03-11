import 'package:flutter/material.dart';
import 'configs/router/router_path_constants.dart';
import 'configs/router/routes.dart';
import 'configs/theme/theme.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      title: 'Thikana Ki',
      onGenerateRoute: Router.generateRoute,
      initialRoute: splashRoute,
    );
  }
}

//Color(0xff069be5),
//Color(0xffe6e7e8),