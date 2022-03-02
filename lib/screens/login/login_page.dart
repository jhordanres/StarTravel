import 'dart:ui';

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
            alignLogo: CrossAxisAlignment.start,
          ),
          _textDescription(),
          _textLogin(),
          _textFieldEmail(),
          _textFieldPass()
        ],
      )
    );
  }

  Widget _textDescription(){
    return Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: const Text(
        'Continua con tu',
        style: TextStyle(
          color: Colors.black54,
          fontSize: 20,
          fontFamily: 'NimbusSans'
        ),
      ),
    );
  }

  Widget _textLogin(){
    return Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 0),
      child: const Text(
        'Login',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 24
        ),
      ),
    );
  }

  Widget _textFieldEmail(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: 'Ingresa el correo',
          labelText: 'Correo',
          suffixIcon: Icon(
            Icons.email_outlined,
            color: utils.Colors.startTravel,
          )
        ),
      ),
    );
  }

  Widget _textFieldPass(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'Ingresa la contraseña',
          labelText: 'Contraseña',
          suffixIcon: Icon(
            Icons.lock_open_outlined,
            color: utils.Colors.startTravel,
          )
        ),
      ),
    );
  }

  Widget _buttonLogin(){
    return RaisedButton(
      onPressed: (){},
      child: Text('Iniciar sesion'),
    );
  }
}