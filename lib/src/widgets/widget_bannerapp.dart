import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class BannerApp extends StatelessWidget {

  CustomClipper<Path> typeClipper;
  Color colorBanner;
  Color colorText;
  double? _width;
  double? height;
  CrossAxisAlignment alignLogo;

  BannerApp({
    Key? key,
    required this.colorText,
    required this.colorBanner,
    required this.typeClipper,
    required this.context,
    this.height,
    required this.alignLogo
  }) : super(key: key);

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: typeClipper,
      child: Container(
        color: colorBanner,
        height: MediaQuery.of(context).size.height * 0.23,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: alignLogo, 
          children: [
          Image.asset(
            'assets/images/logo.png',
            width: 150,
            height: height,
          ),
          Text(
            'Rapido y Seguro',
            style: TextStyle(
              fontFamily: 'Pacifico', 
              fontSize: 22, 
              color: colorText,
              height: 4
            ),
          )
          ]
        ),
      ),
    );
  }
}