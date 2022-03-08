import 'package:flutter/material.dart';
import 'package:star_travel/src/screens/home/screens_home.dart';
import 'package:star_travel/src/screens/login/screens_login.dart';
import 'package:star_travel/src/utils/colors.dart' as util;
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Star Travel',
      theme: ThemeData(
        fontFamily: 'NimbusSans',
        appBarTheme: AppBarTheme(
          elevation: 0,
          color: util.Colors.startTravel
        ),
      ),
      initialRoute: 'home',
      routes: {
        'home' : (BuildContext context) => HomePage(),
        'login': (BuildContext context) => const LoginPage(),
      },
    );
  }
} 