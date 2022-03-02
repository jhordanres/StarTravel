import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:star_travel/widgets/widgets.dart';
import 'package:star_travel/utils/colors.dart' as utils;


class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          BannerApp(
            typeClipper: WaveClipperTwo(), 
            context: context,
            colorBanner: utils.Colors.startTravel,
            colorText: Colors.white,
            height:100 ,
          )
        ],
      )
    );
  }

}