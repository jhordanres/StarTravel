import 'package:flutter/material.dart';

import 'screens/home_page.dart';

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
        fontFamily: 'NimbusSans'
      ),
      initialRoute: 'home',
      routes: {
        'home' : (BuildContext context) => HomePage()
      },
    );
  }
} 