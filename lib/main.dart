import 'package:flutter/material.dart';
import 'package:flutter_30_days/screens/homepage.dart';
import 'package:flutter_30_days/screens/loginpage.dart';
import 'package:flutter_30_days/utils/routes.dart';
import 'package:flutter_30_days/widgets/themes.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: MyTheme.lighttheme(context),
      darkTheme: MyTheme.darktheme(context),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/" :     (context) => LoginPage(),
        MyRoutes.homeRoute : (context) => HomePage(),
        MyRoutes.loginRoute : (context) => LoginPage(),
      },
    );
  }
}
